.class public Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "StaggeredGridSpacingItemDecoration.java"


# instance fields
.field private headerItemNoSpacing:Z

.field private spacing:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 14
    iput p1, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    .line 15
    iput-boolean p2, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->headerItemNoSpacing:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 21
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p4

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 24
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 25
    iget-boolean p3, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->headerItemNoSpacing:Z

    if-eqz p3, :cond_0

    .line 26
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    .line 28
    :cond_0
    iget p1, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    iget p3, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    iget p4, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    iget v0, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    .line 36
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    .line 37
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    const/4 v1, 0x1

    if-nez p2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p4, -0x1

    if-ne p2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-ge p2, p4, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    sub-int/2addr p3, p4

    if-lt v0, p3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 45
    :goto_3
    iget p3, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    div-int/lit8 p3, p3, 0x2

    if-eqz v3, :cond_6

    .line 47
    iget p4, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    goto :goto_4

    :cond_6
    move p4, p3

    :goto_4
    if-eqz p2, :cond_7

    iget p2, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    goto :goto_5

    :cond_7
    move p2, p3

    :goto_5
    if-eqz v4, :cond_8

    iget p3, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    :cond_8
    if-eqz v1, :cond_9

    iget v2, p0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;->spacing:I

    :cond_9
    invoke-virtual {p1, p4, p2, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6
    return-void
.end method
