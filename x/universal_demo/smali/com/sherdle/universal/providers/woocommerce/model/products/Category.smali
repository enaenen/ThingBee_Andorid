.class public Lcom/sherdle/universal/providers/woocommerce/model/products/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private image:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private slug:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slug"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->count:I

    return v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImage()Lcom/google/gson/JsonElement;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->image:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->count:I

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImage(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->image:Lcom/google/gson/JsonElement;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->name:Ljava/lang/String;

    return-void
.end method

.method public setSlug(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->slug:Ljava/lang/String;

    return-void
.end method
