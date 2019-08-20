.class public Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;
.super Ljava/lang/Object;
.source "CredentialStorage.java"


# static fields
.field private static final ID:Ljava/lang/String; = "WOO_CREDENTIALS_ID"

.field private static final KEY:Ljava/lang/String; = "WOO_CREDENTIALS"

.field private static final MAIL:Ljava/lang/String; = "WOO_CREDENTIALS_MAIL"

.field private static final NAME:Ljava/lang/String; = "WOO_CREDENTIALS_NAME"

.field private static final PASS:Ljava/lang/String; = "WOO_CREDENTIALS_PASS"

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCredentials(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 36
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static credentialsAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WOO_CREDENTIALS_MAIL"

    .line 43
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WOO_CREDENTIALS_PASS"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 47
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WOO_CREDENTIALS_MAIL"

    const/4 v1, 0x0

    .line 48
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getId(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .line 62
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WOO_CREDENTIALS_ID"

    const/4 v1, 0x0

    .line 63
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WOO_CREDENTIALS_NAME"

    const/4 v1, 0x0

    .line 58
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WOO_CREDENTIALS_PASS"

    const/4 v1, 0x0

    .line 53
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 67
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "WOO_CREDENTIALS"

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 70
    :cond_0
    sget-object p0, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static saveCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 24
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "WOO_CREDENTIALS_MAIL"

    .line 27
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "WOO_CREDENTIALS_PASS"

    .line 28
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "WOO_CREDENTIALS_ID"

    .line 29
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "WOO_CREDENTIALS_NAME"

    .line 30
    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
