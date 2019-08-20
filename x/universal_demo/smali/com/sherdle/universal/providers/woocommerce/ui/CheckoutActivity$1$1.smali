.class Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1$1;
.super Ljava/lang/Object;
.source "CheckoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1$1;->this$1:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;

    iget-object p1, p1, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/CheckoutActivity;->finish()V

    return-void
.end method
