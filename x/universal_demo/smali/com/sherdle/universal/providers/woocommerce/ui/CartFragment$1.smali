.class Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$100(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;)V

    invoke-direct {p1, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;-><init>(Landroid/content/Context;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;)V

    .line 126
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->addProductsToCart(Ljava/util/List;)V

    return-void
.end method
