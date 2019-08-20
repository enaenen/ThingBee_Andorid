.class Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->loadRelated()V
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
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

.field final synthetic val$productList:Ljava/util/ArrayList;

.field final synthetic val$productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

.field final synthetic val$relatedList:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Ljava/util/ArrayList;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$productList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$relatedList:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$relatedList:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;)V"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    const v1, 0x7f09014a

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->setModeAndNotify(I)V

    .line 266
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$productList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$4;->val$productsAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->notifyDataSetChanged()V

    return-void
.end method
