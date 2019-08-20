.class Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$2;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
