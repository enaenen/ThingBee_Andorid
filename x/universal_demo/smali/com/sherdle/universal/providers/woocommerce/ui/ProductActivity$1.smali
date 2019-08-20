.class Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$1;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    return-void
.end method
