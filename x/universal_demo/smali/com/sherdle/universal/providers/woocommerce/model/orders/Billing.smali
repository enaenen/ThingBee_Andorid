.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;
.super Ljava/lang/Object;
.source "Billing.java"


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

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
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

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone"
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

    .line 106
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->postcode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->address1:Ljava/lang/String;

    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->address2:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->city:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->company:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->country:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->email:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPostcode(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->postcode:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;->state:Ljava/lang/String;

    return-void
.end method
