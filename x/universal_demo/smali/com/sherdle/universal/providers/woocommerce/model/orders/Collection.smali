.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/Collection;
.super Ljava/lang/Object;
.source "Collection.java"


# instance fields
.field private href:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "href"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Collection;->href:Ljava/lang/String;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Collection;->href:Ljava/lang/String;

    return-void
.end method
