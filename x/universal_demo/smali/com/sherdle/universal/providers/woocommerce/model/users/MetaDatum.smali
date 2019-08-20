.class public Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;
.super Ljava/lang/Object;
.source "MetaDatum.java"


# instance fields
.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/MetaDatum;->value:Ljava/lang/String;

    return-void
.end method
