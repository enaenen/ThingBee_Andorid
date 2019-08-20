.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;
.super Ljava/lang/Object;
.source "WooCommerceLoginActivity.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->retrieveUserData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
        "Lcom/sherdle/universal/providers/woocommerce/model/users/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

.field final synthetic val$mEmail:Ljava/lang/String;

.field final synthetic val$mPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->val$mEmail:Ljava/lang/String;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->val$mPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->loginAttemptCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/users/User;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 259
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/model/users/User;

    .line 260
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->val$mEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->val$mPassword:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 264
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/users/User;->getFirstName()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {v0, v1, v3, v4, p1}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->saveCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->loginAttemptCompleted(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "INFO"

    const-string v0, "No Customers found with this email. Perhaps this person is a user, but not a customer"

    .line 268
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "INFO"

    const-string v0, "More than 1 Customer found with this email"

    .line 270
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->loginAttemptCompleted(Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method
