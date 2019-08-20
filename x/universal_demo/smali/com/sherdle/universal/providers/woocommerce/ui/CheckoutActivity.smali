.class public Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CheckoutActivity.java"


# static fields
.field private static COOKIE_LIST:Ljava/lang/String; = "LIST"


# instance fields
.field private mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    .line 47
    invoke-virtual {v3}, Lokhttp3/Cookie;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_0
    sget-object p1, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->COOKIE_LIST:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    const p1, 0x7f0b002a

    .line 58
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->setContentView(I)V

    const p1, 0x7f0901a6

    .line 60
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 61
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v1, 0x7f0f0037

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 64
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCheckout()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->COOKIE_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f090189

    .line 74
    invoke-virtual {p0, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 75
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    const v2, 0x7f0901cd

    .line 76
    invoke-virtual {p0, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mWebView:Landroid/webkit/WebView;

    .line 77
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 131
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
