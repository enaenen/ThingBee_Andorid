.class public Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;
.super Ljava/lang/Object;
.source "RestAPI.java"


# static fields
.field private static currencyFormat:Ljava/lang/String; = "$%s"

.field public static home_banner_one:Ljava/lang/String; = "featured"

.field public static home_banner_two:Ljava/lang/String; = "sale"

.field private static unit_size:Ljava/lang/String; = "cm"

.field private static unit_weight:Ljava/lang/String; = "kg"


# instance fields
.field private checkout:Ljava/lang/String;

.field private checkout_complete:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private login:Ljava/lang/String;

.field private login_success_cookie:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private register:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/wp-json/wc/v2/"

    .line 21
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->path:Ljava/lang/String;

    const-string v0, "/checkout/"

    .line 23
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->checkout:Ljava/lang/String;

    const-string v0, "/wp-login.php"

    .line 25
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->login:Ljava/lang/String;

    const-string v0, "/my-account/"

    .line 27
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->register:Ljava/lang/String;

    const-string v0, "/checkout/order-received/"

    .line 29
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->checkout_complete:Ljava/lang/String;

    const-string v0, "wordpress_logged_in_"

    .line 31
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->login_success_cookie:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->context:Landroid/content/Context;

    return-void
.end method

.method public static getCurrencyFormat()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->currencyFormat:Ljava/lang/String;

    return-object v0
.end method

.method public static getUnitSize()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->unit_size:Ljava/lang/String;

    return-object v0
.end method

.method public static getUnitWeight()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->unit_weight:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCheckout()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->checkout:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckoutComplete()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->checkout_complete:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomerKey()Ljava/lang/String;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerSecret()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->login:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginCookie()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->login_success_cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRegister()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->register:Ljava/lang/String;

    return-object v0
.end method
