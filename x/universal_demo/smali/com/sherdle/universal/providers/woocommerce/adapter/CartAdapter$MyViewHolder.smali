.class Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field overflowDelete:Landroid/widget/TextView;

.field overflowEdit:Landroid/widget/TextView;

.field productDetails:Landroid/widget/TextView;

.field productImage:Landroid/widget/ImageView;

.field productName:Landroid/widget/TextView;

.field productPrice:Landroid/widget/TextView;

.field productPriceRegular:Landroid/widget/TextView;

.field productQuantity:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Landroid/view/View;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    .line 38
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090136

    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productName:Landroid/widget/TextView;

    const p1, 0x7f090137

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPrice:Landroid/widget/TextView;

    const p1, 0x7f090138

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPriceRegular:Landroid/widget/TextView;

    const p1, 0x7f090139

    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productQuantity:Landroid/widget/TextView;

    const p1, 0x7f090134

    .line 43
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productDetails:Landroid/widget/TextView;

    const p1, 0x7f090135

    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productImage:Landroid/widget/ImageView;

    const p1, 0x7f09011a

    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->overflowDelete:Landroid/widget/TextView;

    const p1, 0x7f09011b

    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->overflowEdit:Landroid/widget/TextView;

    return-void
.end method
