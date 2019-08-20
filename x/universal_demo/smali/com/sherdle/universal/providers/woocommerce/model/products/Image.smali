.class public Lcom/sherdle/universal/providers/woocommerce/model/products/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alt"
    .end annotation
.end field

.field private dateCreated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created"
    .end annotation
.end field

.field private dateModified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_modified"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private position:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private src:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "src"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlt()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->dateModified:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->position:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->alt:Ljava/lang/String;

    return-void
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->dateCreated:Ljava/lang/String;

    return-void
.end method

.method public setDateModified(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->dateModified:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->position:Ljava/lang/Integer;

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->src:Ljava/lang/String;

    return-void
.end method
