.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$1;
.super Ljava/lang/Object;
.source "WooCommerceLoginActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)V

    const/4 p1, 0x1

    return p1
.end method
