.class Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;
.super Ljava/lang/Object;
.source "CartAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->onBindViewHolder(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

.field final synthetic val$cartProduct:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

.field final synthetic val$holder:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

.field final synthetic val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->val$cartProduct:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    iput-object p4, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->val$holder:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->val$cartProduct:Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartProduct;->getVariation()Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->removeProductFromCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->val$holder:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
