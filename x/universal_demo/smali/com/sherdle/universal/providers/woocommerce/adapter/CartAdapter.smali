.class public Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static MAX_QUANTITY:I = 0xf


# instance fields
.field private cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->showQuantityEditor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private showQuantityEditor(I)V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v1, Landroid/widget/NumberPicker;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getManageStock()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getStockQuantity()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    sget v2, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->MAX_QUANTITY:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    const/4 v2, 0x1

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 125
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getQuantity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 127
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xe

    .line 129
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f00bb

    .line 135
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 138
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0f00a1

    new-instance v4, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;

    invoke-direct {v4, p0, p1, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Landroid/widget/NumberPicker;)V

    .line 139
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f002e

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$4;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$4;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;)V

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->onBindViewHolder(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;I)V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    .line 66
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getImages()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->getPrice(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)F

    move-result v4

    .line 71
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getCategories()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getCategories()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDescription()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<[^>]*>"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 76
    :goto_0
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v5

    invoke-static {v5}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->getVariationDescription(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Ljava/lang/String;

    move-result-object v5

    .line 80
    :cond_1
    iget-object v6, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productName:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPrice:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productDetails:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productQuantity:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0f00ba

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getQuantity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->overflowDelete:Landroid/widget/TextView;

    new-instance v5, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;

    invoke-direct {v5, p0, v0, p2, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->overflowEdit:Landroid/widget/TextView;

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 100
    iget-object p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getOnSale()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPriceRegular:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPriceRegular:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getRegularPrice()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPriceRegular:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPriceRegular:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 113
    iget-object p1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPrice:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getSalePrice()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->productPrice:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0060

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Landroid/view/View;)V

    return-object p2
.end method
