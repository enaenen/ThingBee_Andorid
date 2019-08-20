.class public Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;
.super Landroid/support/v4/app/Fragment;
.source "WooCommerceFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
        "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
        ">;",
        "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;"
    }
.end annotation


# static fields
.field private static final FEATURED:Ljava/lang/String; = "featured"

.field private static final HOME:Ljava/lang/String; = "home"

.field private static final SALE:Ljava/lang/String; = "sale"


# instance fields
.field private category:I

.field private filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

.field private headerImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isHomePage:Z

.field private mAct:Landroid/app/Activity;

.field private page:I

.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation
.end field

.field private productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private searchMenu:Landroid/view/MenuItem;

.field private searchQuery:Ljava/lang/String;

.field private searchView:Landroid/support/v7/widget/SearchView;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->isHomePage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->refreshItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/support/v7/widget/SearchView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchView:Landroid/support/v7/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->setViewMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->updateViewModeButtons(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$202(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/app/Activity;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;I)I
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->randomGradientResource(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/view/MenuItem;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchMenu:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->showFilterDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Lcom/sherdle/universal/util/ViewModeUtils;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    return-object p0
.end method

.method private loadCategorySlider(I)V
    .locals 2

    .line 368
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;I)V

    .line 409
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getCategories(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadFilterHeader(I)V
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0064

    const/4 v2, 0x0

    .line 458
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090106

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f090055

    .line 460
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 461
    invoke-direct {p0, v1, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->updateViewModeButtons(Landroid/view/View;Landroid/view/View;)V

    const v3, 0x7f0900a5

    .line 463
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 464
    new-instance v4, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$9;

    invoke-direct {v4, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$9;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    new-instance v3, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;

    invoke-direct {v3, p0, v2, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$10;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    .line 479
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->addHeaderToIndex(Landroid/view/View;I)V

    return-void
.end method

.method private loadHeaderImage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0066

    const/4 v2, 0x0

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 436
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 437
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;

    invoke-direct {p2, p0, p3}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$8;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {p2, v0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->addHeaderToIndex(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private loadSearchHeader(I)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0067

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f09015f

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 416
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$7;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 429
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->addHeaderToIndex(Landroid/view/View;I)V

    return-void
.end method

.method private loadTextHeader(ILjava/lang/String;)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0069

    const/4 v2, 0x0

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f09018f

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {p2, v0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->addHeaderToIndex(Landroid/view/View;I)V

    return-void
.end method

.method private randomGradientResource(I)I
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 326
    :cond_0
    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getGradient(I)I

    move-result p1

    return p1
.end method

.method private refreshItems()V
    .locals 2

    const/4 v0, 0x1

    .line 174
    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    .line 175
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 176
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->clearFilters()V

    .line 177
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setHasMore(Z)V

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setModeAndNotify(I)V

    .line 179
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->requestItems()V

    return-void
.end method

.method private requestItems()V
    .locals 5

    .line 189
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;-><init>(Landroid/content/Context;)V

    .line 190
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchQuery:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchQuery:Ljava/lang/String;

    iget v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    iget-object v4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getProductsForQuery(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;ILcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 192
    :cond_0
    iget v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->category:I

    if-eqz v1, :cond_1

    .line 193
    iget v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->category:I

    iget v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    iget-object v4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v0, p0, v1, v3, v4}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getProductsForCategory(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;IILcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 195
    :cond_1
    iget v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v0, p0, v1, v3}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getProducts(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;ILcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private setViewMode()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v0}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->isHomePage:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchQuery:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 491
    :goto_1
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {v2, v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 492
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private showFilterDialog()V
    .locals 13

    .line 269
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0063

    const/4 v3, 0x0

    .line 271
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900fd

    .line 273
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    const v2, 0x7f0900f2

    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/EditText;

    const v2, 0x7f09004c

    .line 275
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    const v2, 0x7f09004b

    .line 276
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    const v2, 0x7f09005b

    .line 278
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09005c

    .line 279
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 280
    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCurrencyFormat()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const-string v11, ""

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCurrencyFormat()Ljava/lang/String;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v4, v12

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getMinPrice()D

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmpl-double v4, v2, v10

    if-eqz v4, :cond_0

    .line 284
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getMinPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getMaxPrice()D

    move-result-wide v2

    cmpl-double v4, v2, v10

    if-eqz v4, :cond_1

    .line 286
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getMaxPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->isOnlySale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->isOnlyFeatured()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0f00a1

    .line 294
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$4;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0f002e

    .line 312
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$5;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$5;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private updateViewModeButtons(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v0}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 497
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 498
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 501
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setModeAndNotify(I)V

    .line 169
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0c000e

    .line 200
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 203
    new-instance p2, Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchView:Landroid/support/v7/widget/SearchView;

    .line 204
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 231
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchView:Landroid/support/v7/widget/SearchView;

    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const p2, 0x7f0900f8

    .line 247
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchMenu:Landroid/view/MenuItem;

    .line 248
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchView:Landroid/support/v7/widget/SearchView;

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 250
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchQuery:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->isHomePage:Z

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 251
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchMenu:Landroid/view/MenuItem;

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 253
    :cond_1
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0052

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 1

    .line 184
    iget v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->page:I

    .line 185
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->requestItems()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900f5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 263
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f0900e2

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f090189

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productList:Ljava/util/List;

    .line 109
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productList:Ljava/util/List;

    invoke-direct {p1, v0, v1, p0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    .line 110
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setModeAndNotify(I)V

    .line 111
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 113
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    .line 114
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-direct {p1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    .line 116
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    const-string v2, "^-?\\d+$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->category:I

    goto :goto_0

    .line 119
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    aget-object v0, p1, v1

    const-string v2, "home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->isHomePage:Z

    goto :goto_0

    .line 121
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    aget-object v0, p1, v1

    const-string v2, "featured"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v0, p2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyFeatured(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    goto :goto_0

    .line 123
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    aget-object v0, p1, v1

    const-string v2, "sale"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->filter:Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    invoke-virtual {v0, p2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlySale(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;

    .line 126
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    .line 127
    array-length v0, p1

    if-le v0, p2, :cond_4

    aget-object v0, p1, p2

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    aget-object v2, p1, p2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    array-length v0, p1

    const/4 v2, 0x2

    if-le v0, v2, :cond_4

    aget-object v0, p1, v2

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    aget-object p1, p1, v2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_4
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->setViewMode()V

    .line 135
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v2, p2}, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;-><init>(IZ)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 136
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 137
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    const p1, 0x7f0f0118

    .line 139
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 144
    :cond_5
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->refreshItems()V

    .line 145
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->updateHeaders()V

    .line 147
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void

    .line 140
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->mAct:Landroid/app/Activity;

    const-string p2, "You need to enter a valid WooCommerce url and API tokens as documented!"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {p1, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setHasMore(Z)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setModeAndNotify(I)V

    .line 163
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public updateHeaders()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->clearHeaders()V

    .line 336
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->searchQuery:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadFilterHeader(I)V

    return-void

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->isHomePage:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 343
    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadSearchHeader(I)V

    .line 344
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->home_banner_one:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadHeaderImage(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 347
    :goto_0
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadCategorySlider(I)V

    .line 348
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    const v1, 0x7f0f00c9

    .line 349
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadTextHeader(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 350
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->home_banner_two:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadHeaderImage(ILjava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, v2

    :cond_2
    const v1, 0x7f0f0086

    .line 352
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadTextHeader(ILjava/lang/String;)V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadHeaderImage(ILjava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->headerImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadFilterHeader(I)V

    :goto_1
    return-void
.end method
