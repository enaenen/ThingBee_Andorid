.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;
.super Ljava/lang/Object;
.source "Shipping.java"


# instance fields
.field private address1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address_1"
    .end annotation
.end field

.field private address2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address_2"
    .end annotation
.end field

.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private company:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "company"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field private postcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postcode"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
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
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->postcode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->address1:Ljava/lang/String;

    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->address2:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->city:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->company:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->country:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->postcode:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;->state:Ljava/lang/String;

    return-void
.end method
