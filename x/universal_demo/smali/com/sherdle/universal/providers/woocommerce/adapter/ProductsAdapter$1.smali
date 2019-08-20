.class Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;
.super Ljava/lang/Object;
.source "ProductsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

.field final synthetic val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;->val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 122
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$1;->val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-direct {v0, v1, p1, v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V

    return-void
.end method
