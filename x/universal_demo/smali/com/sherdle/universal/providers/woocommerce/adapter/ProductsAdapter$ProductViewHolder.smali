.class Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProductsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProductViewHolder"
.end annotation


# instance fields
.field overflow:Landroid/widget/ImageView;

.field productImage:Landroid/widget/ImageView;

.field productName:Landroid/widget/TextView;

.field productPrice:Landroid/widget/TextView;

.field productPriceRegular:Landroid/widget/TextView;

.field saleLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Landroid/view/View;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    .line 43
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->view:Landroid/view/View;

    const p1, 0x7f090136

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productName:Landroid/widget/TextView;

    const p1, 0x7f090137

    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPrice:Landroid/widget/TextView;

    const p1, 0x7f090138

    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPriceRegular:Landroid/widget/TextView;

    const p1, 0x7f090135

    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productImage:Landroid/widget/ImageView;

    const p1, 0x7f090119

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->overflow:Landroid/widget/ImageView;

    const p1, 0x7f090151

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->saleLabel:Landroid/widget/TextView;

    return-void
.end method
