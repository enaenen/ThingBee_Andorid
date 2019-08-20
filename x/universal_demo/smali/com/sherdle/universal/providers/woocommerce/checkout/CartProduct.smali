.class public Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;
.super Ljava/lang/Object;
.source "CartProduct.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

.field private quantity:I

.field private variation:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->quantity:I

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->variation:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    return-void
.end method

.method public constructor <init>(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->quantity:I

    .line 19
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->variation:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    return-void
.end method


# virtual methods
.method public getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    return-object v0
.end method

.method public getQuantity()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->quantity:I

    return v0
.end method

.method public getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->variation:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    return-object v0
.end method

.method setQuantity(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->quantity:I

    return-void
.end method

.method updateQuantity(I)V
    .locals 1

    .line 29
    iget v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->quantity:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->quantity:I

    return-void
.end method
