.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;
.super Ljava/lang/Object;
.source "CartWithCookies.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->startProductsToCartLoop(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

.field final synthetic val$productsToAdd:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Ljava/util/List;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->val$productsToAdd:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$300(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;->failure()V

    return-void
.end method

.method public success(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->val$productsToAdd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->val$productsToAdd:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->val$productsToAdd:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    .line 81
    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$100(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    move-result-object v1

    .line 80
    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$200(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$300(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;->success(Ljava/util/List;)V

    :goto_0
    return-void
.end method
