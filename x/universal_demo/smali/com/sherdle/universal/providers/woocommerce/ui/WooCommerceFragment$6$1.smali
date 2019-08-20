.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;

.field final synthetic val$item:Lcom/sherdle/universal/providers/woocommerce/model/products/Category;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;Lcom/sherdle/universal/providers/woocommerce/model/products/Category;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;->val$item:Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 390
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;

    iget-object p1, p1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$400(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/app/Activity;

    move-result-object p1

    const-class v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;->val$item:Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method
