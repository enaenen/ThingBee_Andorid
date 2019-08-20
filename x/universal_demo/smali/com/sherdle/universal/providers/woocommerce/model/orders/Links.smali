.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;
.super Ljava/lang/Object;
.source "Links.java"


# instance fields
.field private collection:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collection"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Collection;",
            ">;"
        }
    .end annotation
.end field

.field private self:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "self"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Self;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;->self:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;->collection:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Collection;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;->collection:Ljava/util/List;

    return-object v0
.end method

.method public getSelf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Self;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;->self:Ljava/util/List;

    return-object v0
.end method

.method public setCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Collection;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;->collection:Ljava/util/List;

    return-void
.end method

.method public setSelf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Self;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;->self:Ljava/util/List;

    return-void
.end method
