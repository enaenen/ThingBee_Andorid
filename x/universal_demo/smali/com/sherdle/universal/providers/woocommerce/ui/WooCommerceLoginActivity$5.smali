.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WooCommerceLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Z)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    iput-boolean p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
