.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;
.super Ljava/lang/Object;
.source "WooCommerceLoginActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->attemptLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

.field final synthetic val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

.field final synthetic val$mEmail:Ljava/lang/String;

.field final synthetic val$mPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->val$mEmail:Ljava/lang/String;

    iput-object p4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->val$mPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 219
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;)V

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->loginAttemptCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 234
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string p2, "Set-Cookie"

    invoke-virtual {p1, p2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Cookie"

    .line 236
    invoke-static {v1, v0}, Lcom/sherdle/universal/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->val$api:Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getLoginCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->val$mEmail:Ljava/lang/String;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->val$mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->retrieveUserData(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog;->showDialogIfNoCookies(Landroid/content/Context;)V

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->loginAttemptCompleted(Ljava/lang/Boolean;)V

    return-void
.end method
