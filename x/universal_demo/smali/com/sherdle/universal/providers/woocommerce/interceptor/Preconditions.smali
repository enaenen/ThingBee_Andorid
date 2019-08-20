.class public Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# static fields
.field private static final DEFAULT_MESSAGE:Ljava/lang/String; = "Received an invalid parameter"

.field public static final OUT_OF_BAND:Ljava/lang/String; = "oob"

.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z][a-zA-Z0-9+.-]*://\\S+"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string p1, "Received an invalid parameter"

    :cond_1
    if-nez p0, :cond_2

    .line 82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->check(ZLjava/lang/String;)V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->check(ZLjava/lang/String;)V

    return-void
.end method

.method public static checkValidOAuthCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->check(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkValidUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->isUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->check(ZLjava/lang/String;)V

    return-void
.end method

.method private static isUrl(Ljava/lang/String;)Z
    .locals 1

    .line 74
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/interceptor/Preconditions;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
