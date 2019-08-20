.class Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

.field final synthetic val$cookies:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;Ljava/util/List;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->val$cookies:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->clearCart()V

    .line 105
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$300(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->notifyDataSetChanged()V

    .line 106
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$400(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)V

    .line 108
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->val$cookies:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->startActivity(Landroid/app/Activity;Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$1;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
