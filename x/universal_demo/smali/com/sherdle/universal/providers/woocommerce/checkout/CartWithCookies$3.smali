.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;
.super Ljava/lang/Object;
.source "CartWithCookies.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->addProductsToCart(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

.field final synthetic val$products:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Ljava/util/List;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;->val$products:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 123
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$300(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;->failure()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;->val$products:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$400(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Ljava/util/List;)V

    .line 131
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
