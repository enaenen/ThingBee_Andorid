.class public Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;
.super Ljava/lang/Object;
.source "CartWithCookies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;,
        Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;
    }
.end annotation


# static fields
.field private static client:Lokhttp3/OkHttpClient;


# instance fields
.field private allProductsAddedCallback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;

.field private mContext:Landroid/content/Context;

.field private final mCookieStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private mCookies:Lokhttp3/CookieJar;

.field private productAddedCallBack:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mCookieStore:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->allProductsAddedCallback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;

    .line 42
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mCookies:Lokhttp3/CookieJar;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mCookieStore:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->productAddedCallBack:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->allProductsAddedCallback:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->startProductsToCartLoop(Ljava/util/List;)V

    return-void
.end method

.method private addProductToCart(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;)V
    .locals 5

    .line 142
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mCookies:Lokhttp3/CookieJar;

    .line 143
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v1

    .line 145
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 148
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?add-to-cart="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&quantity="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getQuantity()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$4;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private startProductsToCartLoop(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;",
            ">;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;

    invoke-direct {p1, p0, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Ljava/util/List;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->productAddedCallBack:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    const/4 p1, 0x0

    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->productAddedCallBack:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;

    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$ProductAddedCallback;)V

    return-void
.end method


# virtual methods
.method public addProductsToCart(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->credentialsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->startProductsToCartLoop(Ljava/util/List;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "log"

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "pwd"

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->client:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->mCookies:Lokhttp3/CookieJar;

    .line 118
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->client:Lokhttp3/OkHttpClient;

    .line 120
    :cond_1
    sget-object v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :goto_0
    return-void
.end method
