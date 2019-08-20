.class public Lcom/sherdle/universal/providers/woocommerce/model/users/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private billing:Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing"
    .end annotation
.end field

.field private dateCreated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created"
    .end annotation
.end field

.field private dateCreatedGmt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created_gmt"
    .end annotation
.end field

.field private dateModified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_modified"
    .end annotation
.end field

.field private dateModifiedGmt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_modified_gmt"
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

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isPayingCustomer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_paying_customer"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field private links:Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_links"
    .end annotation
.end field

.field private ordersCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orders_count"
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "role"
    .end annotation
.end field

.field private shipping:Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping"
    .end annotation
.end field

.field private totalSpent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_spent"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBilling()Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->billing:Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreatedGmt()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateCreatedGmt:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateModified:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModifiedGmt()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateModifiedGmt:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsPayingCustomer()Ljava/lang/Boolean;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->isPayingCustomer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->links:Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;

    return-object v0
.end method

.method public getOrdersCount()Ljava/lang/Integer;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->ordersCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getShipping()Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->shipping:Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;

    return-object v0
.end method

.method public getTotalSpent()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->totalSpent:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setBilling(Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->billing:Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;

    return-void
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateCreated:Ljava/lang/String;

    return-void
.end method

.method public setDateCreatedGmt(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateCreatedGmt:Ljava/lang/String;

    return-void
.end method

.method public setDateModified(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateModified:Ljava/lang/String;

    return-void
.end method

.method public setDateModifiedGmt(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->dateModifiedGmt:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->email:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setIsPayingCustomer(Ljava/lang/Boolean;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->isPayingCustomer:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLinks(Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->links:Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;

    return-void
.end method

.method public setOrdersCount(Ljava/lang/Integer;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->ordersCount:Ljava/lang/Integer;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->role:Ljava/lang/String;

    return-void
.end method

.method public setShipping(Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->shipping:Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;

    return-void
.end method

.method public setTotalSpent(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->totalSpent:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->username:Ljava/lang/String;

    return-void
.end method
