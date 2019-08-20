.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$1;
.super Ljava/lang/Object;
.source "CartAssistant.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V
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

    .line 56
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method
