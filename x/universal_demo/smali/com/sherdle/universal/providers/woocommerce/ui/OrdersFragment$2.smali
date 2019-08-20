.class Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 100
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->credentialsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$300(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :goto_0
    return-void
.end method
