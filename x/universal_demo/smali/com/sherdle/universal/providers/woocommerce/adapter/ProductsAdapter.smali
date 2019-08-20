.class public Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "ProductsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;,
        Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_CUSTOM:I = 0x1

.field private static final TYPE_PRODUCT:I


# instance fields
.field private headersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private itemWidth:F

.field private mContext:Landroid/content/Context;

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 66
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->productList:Ljava/util/List;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public addHeaderToIndex(Landroid/view/View;I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;

    invoke-direct {v1, p1}, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;-><init>(Landroid/view/View;)V

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearHeaders()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 97
    instance-of v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->productList:Ljava/util/List;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 102
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getImages()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v3, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getOnSale()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPriceRegular:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->saleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPriceRegular:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getRegularPrice()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPriceRegular:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPriceRegular:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 112
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPrice:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getSalePrice()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPriceRegular:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->saleLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productPrice:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPrice()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->overflow:Landroid/widget/ImageView;

    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 127
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->productImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->itemWidth:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    .line 137
    iget-object p1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->itemWidth:F

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 139
    :cond_1
    instance-of v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;

    if-eqz v0, :cond_3

    .line 140
    move-object v0, p1

    check-cast v0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;

    iget-object v1, v0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 142
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;

    iget-object v1, v1, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;

    iget-object v1, v1, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;

    iget-object v2, v2, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_2
    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;

    iget-object p2, p2, Lcom/sherdle/universal/providers/woocommerce/model/ViewItem;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->productList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b006d

    .line 83
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$ProductViewHolder;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Landroid/view/View;)V

    return-object p2

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0065

    .line 87
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object p2
.end method

.method protected getViewType(I)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->headersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 162
    instance-of v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setItemWidth(F)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->itemWidth:F

    return-void
.end method
