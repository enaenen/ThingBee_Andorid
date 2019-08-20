.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;
.super Ljava/lang/Object;
.source "ShippingLine.java"


# instance fields
.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private methodId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method_id"
    .end annotation
.end field

.field private methodTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method_title"
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->taxes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMethodId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->methodId:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->methodTitle:Ljava/lang/String;

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

    .line 130
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->taxes:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->total:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTax()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->totalTax:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMethodId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->methodId:Ljava/lang/String;

    return-void
.end method

.method public setMethodTitle(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->methodTitle:Ljava/lang/String;

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

    .line 139
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->taxes:Ljava/util/List;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->total:Ljava/lang/String;

    return-void
.end method

.method public setTotalTax(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;->totalTax:Ljava/lang/String;

    return-void
.end method
