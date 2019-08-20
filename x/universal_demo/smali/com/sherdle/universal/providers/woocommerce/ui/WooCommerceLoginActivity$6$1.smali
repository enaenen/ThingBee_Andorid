.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6$1;
.super Ljava/lang/Object;
.source "WooCommerceLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;

    iget-object v0, v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->isOnlineShowDialog(Landroid/app/Activity;)Z

    return-void
.end method
