.class public Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;
.super Lcom/sherdle/universal/util/DetailActivity;
.source "ProductActivity.java"


# static fields
.field public static final PRODUCT:Ljava/lang/String; = "product"


# instance fields
.field private btnCart:Landroid/support/design/widget/FloatingActionButton;

.field private mCartAssistant:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

.field private mPresentation:Landroid/widget/TextView;

.field private product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

.field private tableLayout:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mCartAssistant:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/model/products/Product;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    return-object p0
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 230
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900d3

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0901c2

    .line 232
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->tableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private loadRating()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getRatingCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f090143

    if-lez v0, :cond_0

    const v0, 0x7f090142

    .line 239
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 240
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getAverageRating()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 239
    invoke-virtual {v0, v2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00c1

    .line 242
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getRatingCount()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f009c

    .line 245
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private loadRelated()V
    .locals 5

    const v0, 0x7f090149

    .line 250
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    const/4 v3, 0x3

    .line 254
    invoke-virtual {v2, v3}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setModeAndNotify(I)V

    .line 255
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setItemWidth(F)V

    .line 256
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 257
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 259
    new-instance v3, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView;)V

    .line 276
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 277
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getRelatedIds()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getProductsForIds(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/util/List;I)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public loadProductProperties()V
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    .line 187
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0035

    .line 189
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;

    .line 196
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const v1, 0x7f0f00f3

    .line 198
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;

    .line 204
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->getOptions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    .line 205
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->getOption()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v3, "\n"

    .line 206
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 204
    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getWeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f0f0115

    .line 212
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getWeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getUnitWeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDimensions()Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDimensions()Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->getLength()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 218
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDimensions()Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->getWidth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDimensions()Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDimensions()Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->getHeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getUnitSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0055

    .line 222
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const v0, 0x7f0f00f0

    .line 226
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 75
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 77
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->setContentView(I)V

    const p1, 0x7f0900d5

    .line 78
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const v0, 0x7f0b002c

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p1, 0x7f0901a6

    .line 82
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 83
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const p1, 0x7f090064

    .line 88
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f090187

    .line 89
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090133

    .line 90
    invoke-virtual {p0, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090132

    .line 91
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09009f

    .line 92
    invoke-virtual {p0, v4}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v5, 0x7f0900ba

    .line 93
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->thumb:Landroid/widget/ImageView;

    const v5, 0x7f090059

    .line 94
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->coolblue:Landroid/widget/RelativeLayout;

    const v5, 0x7f090140

    .line 95
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableLayout;

    iput-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->tableLayout:Landroid/widget/TableLayout;

    const v5, 0x7f090040

    .line 96
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/FloatingActionButton;

    iput-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->btnCart:Landroid/support/design/widget/FloatingActionButton;

    const v5, 0x7f0901a2

    .line 97
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mPresentation:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "product"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iput-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 100
    iget-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getDescription()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<[^>]*>"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 101
    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v6}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getShortDescription()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<[^>]*>"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-static {p0}, Lcom/sherdle/universal/util/WebHelper;->getTextViewFontSize(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x2

    .line 103
    invoke-virtual {p1, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    iget-object v7, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->btnCart:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v7}, Landroid/support/design/widget/FloatingActionButton;->bringToFront()V

    .line 107
    new-instance v7, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    iget-object v8, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->btnCart:Landroid/support/design/widget/FloatingActionButton;

    iget-object v9, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-direct {v7, p0, v8, v9}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    iput-object v7, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mCartAssistant:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    const v7, 0x7f09001e

    .line 108
    invoke-virtual {p0, v7}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    iget-object v7, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->mPresentation:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v8}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 115
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getOnSale()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getRegularPrice()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 122
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getSalePrice()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPrice()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->getSrc()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->setUpHeader(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->btnCart:Landroid/support/design/widget/FloatingActionButton;

    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->thumb:Landroid/widget/ImageView;

    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->loadProductProperties()V

    .line 178
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->loadRating()V

    .line 179
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->loadRelated()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000d

    .line 318
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 311
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 308
    :pswitch_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPermalink()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return v2

    .line 297
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 300
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPermalink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    .line 301
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ee

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f0900f9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 282
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 287
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onResume()V

    return-void
.end method
