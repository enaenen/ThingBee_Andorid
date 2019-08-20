.class Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 90
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->startActivity(Landroid/content/Intent;)V

    .line 94
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$102(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;Z)Z

    return-void
.end method
