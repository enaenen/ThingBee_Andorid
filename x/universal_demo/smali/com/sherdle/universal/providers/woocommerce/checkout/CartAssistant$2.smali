.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;
.super Ljava/lang/Object;
.source "CartAssistant.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->retrieveVariations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
        "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->access$102(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->access$200(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)V

    return-void
.end method
