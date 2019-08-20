.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$3;
.super Ljava/lang/Object;
.source "CartAssistant.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->selectVariation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->access$100(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    return-void
.end method
