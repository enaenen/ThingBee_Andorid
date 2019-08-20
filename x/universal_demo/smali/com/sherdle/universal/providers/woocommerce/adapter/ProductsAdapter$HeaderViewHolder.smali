.class Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProductsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field layout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;Landroid/view/View;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    .line 59
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter$HeaderViewHolder;->layout:Landroid/widget/LinearLayout;

    return-void
.end method
