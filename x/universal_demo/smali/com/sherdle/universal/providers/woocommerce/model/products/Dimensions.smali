.class public Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field private length:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private width:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
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
.method public getHeight()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->length:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->width:Ljava/lang/String;

    return-object v0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->height:Ljava/lang/String;

    return-void
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->length:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;->width:Ljava/lang/String;

    return-void
.end method
