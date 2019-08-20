.class public Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->name:Ljava/lang/String;

    return-void
.end method

.method public setSlug(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;->slug:Ljava/lang/String;

    return-void
.end method
