.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;
.super Ljava/lang/Object;
.source "CartWithCookies.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

.field final synthetic val$callback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

.field final synthetic val$product:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;->val$callback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;->val$product:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 158
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;->val$callback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;->failure()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "INFO"

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESPONSE CODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;->val$callback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;->val$product:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;->success(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;)V

    .line 168
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
