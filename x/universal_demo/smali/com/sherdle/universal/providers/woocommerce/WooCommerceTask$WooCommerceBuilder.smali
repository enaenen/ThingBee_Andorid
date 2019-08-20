.class public Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;
.super Ljava/lang/Object;
.source "WooCommerceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WooCommerceBuilder"
.end annotation


# instance fields
.field private restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-direct {v0, p1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    return-void
.end method


# virtual methods
.method public getCategories(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
            ">;)",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "products/categories"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?per_page="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$400()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&orderby=count&order=desc"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object v0
.end method

.method public getOrders(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;II)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
            ">;II)",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "orders?customer="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&page="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method

.method public getProducts(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;ILcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;I",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;",
            ")",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "products"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&page="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method

.method public getProductsForCategory(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;IILcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;II",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;",
            ")",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "products"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&page="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&category="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method

.method public getProductsForIds(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/util/List;I)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "products"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?page="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$100()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&include="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-static {p3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method

.method public getProductsForQuery(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;ILcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;",
            ")",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "products"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&page="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "&search="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method

.method public getUsers(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/users/User;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/users/User;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "customers?email="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v3, Lcom/sherdle/universal/providers/woocommerce/model/users/User;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method

.method public getVariationsForProduct(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;I)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;I)",
            "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "products/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/variations"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?per_page=10"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    const-class v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iget-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->restAPI:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;-><init>(Ljava/lang/Class;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$1;)V

    return-object p2
.end method
