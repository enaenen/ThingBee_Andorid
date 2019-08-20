.class public Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
.super Ljava/lang/Object;
.source "WooCommerceProductFilter.java"


# instance fields
.field private maxPrice:D

.field private minPrice:D

.field private onlyFeatured:Z

.field private onlyInStock:Z

.field private onlySale:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFilters()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->minPrice:D

    .line 77
    iput-wide v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->maxPrice:D

    return-void
.end method

.method public getMaxPrice()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->maxPrice:D

    return-wide v0
.end method

.method public getMinPrice()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->minPrice:D

    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 7

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-wide v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->minPrice:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&min_price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->minPrice:D

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    iget-wide v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->maxPrice:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&max_price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->maxPrice:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_1
    iget-boolean v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyFeatured:Z

    if-eqz v1, :cond_2

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&featured="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyFeatured:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_2
    iget-boolean v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlySale:Z

    if-eqz v1, :cond_3

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&on_sale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlySale:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_3
    iget-boolean v1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyInStock:Z

    if-eqz v1, :cond_4

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&in_stock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyInStock:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOnlyFeatured()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyFeatured:Z

    return v0
.end method

.method public isOnlyInStock()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyInStock:Z

    return v0
.end method

.method public isOnlySale()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlySale:Z

    return v0
.end method

.method public maxPrice(D)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->maxPrice:D

    return-object p0
.end method

.method public minPrice(D)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->minPrice:D

    return-object p0
.end method

.method public onlyFeatured(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyFeatured:Z

    return-object p0
.end method

.method public onlyInStock(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlyInStock:Z

    return-object p0
.end method

.method public onlySale(Z)Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceProductFilter;->onlySale:Z

    return-object p0
.end method
