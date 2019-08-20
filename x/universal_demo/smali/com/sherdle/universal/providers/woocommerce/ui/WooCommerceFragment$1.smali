.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$1;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    return-void
.end method
