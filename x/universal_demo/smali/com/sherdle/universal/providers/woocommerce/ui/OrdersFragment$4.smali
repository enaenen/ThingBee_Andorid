.class Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$4;
.super Ljava/lang/Object;
.source "OrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->success(Ljava/util/ArrayList;)V
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

    .line 152
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method
