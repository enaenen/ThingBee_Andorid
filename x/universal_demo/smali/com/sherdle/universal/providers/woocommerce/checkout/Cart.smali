.class public Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;
.super Ljava/lang/Object;
.source "Cart.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;
    }
.end annotation


# static fields
.field private static productsInCart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CACHE_FILE:Ljava/lang/String;

.field private callback:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;

.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cart"

    .line 26
    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->CACHE_FILE:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->context:Landroid/content/Context;

    .line 32
    sget-object p1, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->retrieveCart()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    sput-object p1, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void
.end method

.method private addProductToCart(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->saveCart()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;
    .locals 1

    .line 42
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private productIsInStock(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;ILcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z
    .locals 0

    if-eqz p3, :cond_0

    move-object p1, p3

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getManageStock()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getInStock()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getStockQuantity()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private retrieveCart()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;",
            ">;"
        }
    .end annotation

    .line 177
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->CACHE_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private saveCart()V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->callback:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->callback:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;

    invoke-interface {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;->onCartUpdated()V

    .line 164
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->CACHE_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 166
    sget-object v1, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 167
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z
    .locals 6

    .line 53
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    .line 54
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    :cond_1
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getQuantity()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {p0, p1, v0, p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productIsInStock(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;ILcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {v1, v3}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->updateQuantity(I)V

    return v3

    :cond_2
    return v2

    .line 67
    :cond_3
    invoke-direct {p0, p1, v3, p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productIsInStock(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;ILcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    invoke-direct {v0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;-><init>(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;)V

    return v3

    :cond_4
    return v2
.end method

.method public clearCart()V
    .locals 1

    .line 129
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 130
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->saveCart()V

    return-void
.end method

.method public getCartProducts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeProductFromCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z
    .locals 5

    .line 91
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    .line 93
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getQuantity()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    const/4 p1, -0x1

    .line 98
    invoke-virtual {v1, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->updateQuantity(I)V

    const/4 p2, 0x0

    goto :goto_0

    .line 101
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->saveCart()V

    return p2

    :cond_3
    return v2
.end method

.method public setCartListener(Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->callback:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart$CartListener;

    return-void
.end method

.method public setProductQuantity(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;I)Z
    .locals 3

    .line 119
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productsInCart:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getProduct()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v2

    invoke-direct {p0, v0, p2, v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->productIsInStock(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;ILcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 122
    :cond_1
    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->setQuantity(I)V

    .line 123
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->saveCart()V

    const/4 p1, 0x1

    return p1
.end method
