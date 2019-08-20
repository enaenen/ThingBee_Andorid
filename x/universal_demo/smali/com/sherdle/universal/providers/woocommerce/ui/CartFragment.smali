.class public Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;
.super Landroid/support/v4/app/Fragment;
.source "CartFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;


# instance fields
.field private btnFinish:Landroid/widget/Button;

.field private cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

.field private loadingView:Landroid/view/View;

.field private mAct:Landroid/app/Activity;

.field private productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private textViewCheckOutPrice:Landroid/widget/TextView;

.field private total:F

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->loadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Landroid/app/Activity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->updateQuantity()V

    return-void
.end method

.method private updateQuantity()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f090074

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->total:F

    .line 138
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getCartProducts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    .line 139
    iget v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->total:F

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->getPrice(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)F

    move-result v3

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getQuantity()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->total:F

    goto :goto_1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->textViewCheckOutPrice:Landroid/widget/TextView;

    iget v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->total:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCartUpdated()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->updateQuantity()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005f

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->view:Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    .line 67
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    instance-of p2, p2, Lcom/sherdle/universal/HolderActivity;

    if-eqz p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    check-cast p2, Lcom/sherdle/universal/HolderActivity;

    invoke-virtual {p2}, Lcom/sherdle/universal/HolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    const v0, 0x7f0f0033

    invoke-virtual {p2, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :cond_0
    const p2, 0x7f090144

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f090195

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->textViewCheckOutPrice:Landroid/widget/TextView;

    const p2, 0x7f090038

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->btnFinish:Landroid/widget/Button;

    const p2, 0x7f0900ea

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->loadingView:Landroid/view/View;

    .line 74
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getInstance(Landroid/content/Context;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    .line 75
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-virtual {p1, p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->setCartListener(Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;)V

    .line 76
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->cart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-direct {p1, p2, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    .line 78
    new-instance p1, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 80
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 81
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->mAct:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 84
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 85
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->updateQuantity()V

    .line 87
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;->btnFinish:Landroid/widget/Button;

    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
