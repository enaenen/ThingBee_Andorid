.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadHeaderImage(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

.field final synthetic val$actionArgument:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Ljava/lang/String;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;->val$actionArgument:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 440
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;->val$actionArgument:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$400(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;->val$actionArgument:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
