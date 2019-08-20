.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->showFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

.field final synthetic val$featuredCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$maxPriceField:Landroid/widget/EditText;

.field final synthetic val$minPriceField:Landroid/widget/EditText;

.field final synthetic val$saleCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$minPriceField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$maxPriceField:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$saleCheckbox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$featuredCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 297
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$minPriceField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$minPriceField:Landroid/widget/EditText;

    .line 298
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 299
    :goto_0
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$maxPriceField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$maxPriceField:Landroid/widget/EditText;

    .line 300
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 301
    :goto_1
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$saleCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 302
    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->val$featuredCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 304
    iget-object v4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {v4}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$300(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->maxPrice(D)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    move-result-object v0

    .line 305
    invoke-virtual {v0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->minPrice(D)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    move-result-object p1

    .line 306
    invoke-virtual {p1, v3}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyFeatured(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    move-result-object p1

    .line 307
    invoke-virtual {p1, v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlySale(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    .line 309
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    return-void
.end method
