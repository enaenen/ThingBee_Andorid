.class Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;
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

    .line 127
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;->val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 130
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "product"

    .line 131
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;->val$product:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->access$000(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
