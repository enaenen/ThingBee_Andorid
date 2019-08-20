.class public Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog;
.super Ljava/lang/Object;
.source "WooCommerceDebugDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showDialogIfAuthFailed(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "woocommerce_rest_authentication_error"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Authentication Error"

    const-string v0, "Universal tried to connect to your API but was refused. You entered the correct API url, and we found your API but we were not allowed to retrieve any products.\n\nThere can be various reasons for this. You might have used the wrong credentials. It can be that your server firewall refuses our requests. Or it can be that your Wordpress installation doesn\'t accept oAuth.\n\nNote that this is not a problem of Universal, but instead a server side problem.\n\nPlease visit our Help Center and search for WooCommerce for recommendedsteps to take"

    .line 13
    invoke-static {p0, v0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static showDialogIfNoCookies(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Login Error"

    const-string v1, "Universal tried to authenticate the user against your login page butthe page returned no cookies. This usually means that your login pageis not correctly configured\n\nFor example, it can be that your server refuses post requests or that your login uses an alternative to cookies. Note that this is not a problem of Universal, but instead a server side problem. You can visit our help center and search for WooCommercefor advice on which steps to take next."

    .line 27
    invoke-static {v0, v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
