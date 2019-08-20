.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadFilterHeader(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

.field final synthetic val$compact:Landroid/widget/ImageButton;

.field final synthetic val$normal:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->val$compact:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->val$normal:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$900(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Lcom/sherdle/universal/util/ViewModeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->val$compact:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/util/ViewModeUtils;->saveToPreferences(I)V

    .line 475
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$1000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    .line 476
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->val$normal:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;->val$compact:Landroid/widget/ImageButton;

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$1100(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
