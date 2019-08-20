.class Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;
.super Landroid/webkit/WebViewClient;
.source "CheckoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

.field final synthetic val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 110
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    const p2, 0x7f0900ea

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 103
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCheckoutComplete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->finish()V

    .line 96
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
