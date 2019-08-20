.class public Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

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

.field private option:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "option"
    .end annotation
.end field

.field private options:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "options"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOption()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->option:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->options:Ljava/util/List;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->name:Ljava/lang/String;

    return-void
.end method

.method public setOption(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->option:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->options:Ljava/util/List;

    return-void
.end method
