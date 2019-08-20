.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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

    .line 232
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$202(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->updateHeaders()V

    .line 238
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    return-void
.end method
