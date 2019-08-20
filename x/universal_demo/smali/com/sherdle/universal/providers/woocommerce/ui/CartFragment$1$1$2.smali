.class Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$2;
.super Ljava/lang/Object;
.source "CartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->failure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$2;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$2;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$100(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1$2;->this$2:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0031

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
