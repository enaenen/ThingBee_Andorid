.class public Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "OrdersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$HeaderViewHolder;,
        Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_HEADER:I = 0x1

.field private static final TYPE_NORMAL:I


# instance fields
.field private headerView:Landroid/view/View;

.field private itemWidth:F

.field private mContext:Landroid/content/Context;

.field private ordersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 53
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->ordersList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 79
    instance-of v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;

    .line 82
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->ordersList:Ljava/util/List;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->headerView:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;

    .line 84
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getLineItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0f00a5

    .line 85
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getId()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getLineItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0f00a6

    .line 86
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getId()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getLineItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_1
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getTotal()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->getDateCreated()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    const-wide/32 v8, 0x240c8400

    const/high16 v10, 0x80000

    .line 90
    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object p2

    .line 92
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 94
    iget-object v3, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderDescription:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderTotal:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderDate:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->orderStatus:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->itemWidth:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    .line 100
    iget-object p1, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->itemWidth:F

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    .line 102
    :cond_2
    instance-of p2, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$HeaderViewHolder;

    if-eqz p2, :cond_3

    .line 104
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->ordersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->headerView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    if-nez p2, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b006b

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$OrderViewHolder;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 70
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$HeaderViewHolder;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->headerView:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$HeaderViewHolder;-><init>(Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;Landroid/view/View;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getViewType(I)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 120
    instance-of v0, p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter$HeaderViewHolder;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->headerView:Landroid/view/View;

    .line 131
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemWidth(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->itemWidth:F

    return-void
.end method
