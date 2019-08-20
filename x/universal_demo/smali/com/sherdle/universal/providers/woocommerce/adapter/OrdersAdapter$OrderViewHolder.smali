.class Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "OrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderViewHolder"
.end annotation


# instance fields
.field orderDate:Landroid/widget/TextView;

.field orderDescription:Landroid/widget/TextView;

.field orderStatus:Landroid/widget/TextView;

.field orderTotal:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    .line 35
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->view:Landroid/view/View;

    const p1, 0x7f090110

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderDescription:Landroid/widget/TextView;

    const p1, 0x7f09010f

    .line 39
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderDate:Landroid/widget/TextView;

    const p1, 0x7f090112

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderTotal:Landroid/widget/TextView;

    const p1, 0x7f090111

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderStatus:Landroid/widget/TextView;

    return-void
.end method
