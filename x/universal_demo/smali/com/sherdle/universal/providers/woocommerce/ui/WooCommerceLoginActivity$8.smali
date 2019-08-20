.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;
.super Ljava/lang/Object;
.source "WooCommerceLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->loginAttemptCompleted(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

.field final synthetic val$success:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->val$success:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->access$300(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Z)V

    .line 291
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->val$success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->finish()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->access$400(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    const v2, 0x7f0f0061

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->access$500(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->access$500(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void
.end method
