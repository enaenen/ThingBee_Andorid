.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;
.super Ljava/lang/Object;
.source "LineItem.java"


# instance fields
.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private meta:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private productId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field private quantity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quantity"
    .end annotation
.end field

.field private sku:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sku"
    .end annotation
.end field

.field private subtotal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtotal"
    .end annotation
.end field

.field private subtotalTax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtotal_tax"
    .end annotation
.end field

.field private taxClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_class"
    .end annotation
.end field

.field private taxes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "taxes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private total:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field private totalTax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_tax"
    .end annotation
.end field

.field private variationId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "variation_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->taxes:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->meta:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMeta()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->meta:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->productId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->subtotal:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotalTax()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->subtotalTax:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxClass()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->taxClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->taxes:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTax()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->totalTax:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationId()Ljava/lang/Integer;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->variationId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMeta(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->meta:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/Integer;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->productId:Ljava/lang/Integer;

    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->quantity:Ljava/lang/Integer;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->sku:Ljava/lang/String;

    return-void
.end method

.method public setSubtotal(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->subtotal:Ljava/lang/String;

    return-void
.end method

.method public setSubtotalTax(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->subtotalTax:Ljava/lang/String;

    return-void
.end method

.method public setTaxClass(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->taxClass:Ljava/lang/String;

    return-void
.end method

.method public setTaxes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->taxes:Ljava/util/List;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->total:Ljava/lang/String;

    return-void
.end method

.method public setTotalTax(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->totalTax:Ljava/lang/String;

    return-void
.end method

.method public setVariationId(Ljava/lang/Integer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->variationId:Ljava/lang/Integer;

    return-void
.end method
