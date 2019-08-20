.class Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->loadHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->clearCredentials(Landroid/content/Context;)V

    .line 123
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0f0022

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 125
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
