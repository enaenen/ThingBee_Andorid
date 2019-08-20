.class Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;
.super Ljava/lang/Object;
.source "CartAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->showQuantityEditor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

.field final synthetic val$aNumberPicker:Landroid/widget/NumberPicker;

.field final synthetic val$cartItem:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Landroid/widget/NumberPicker;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->val$cartItem:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->val$aNumberPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->val$cartItem:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->val$aNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->setProductQuantity(Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;I)Z

    .line 144
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$5;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->notifyDataSetChanged()V

    return-void
.end method
