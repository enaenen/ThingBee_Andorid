.class public abstract Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "EndlessRecyclerOnScrollListener.java"


# static fields
.field public static TAG:Ljava/lang/String; = "EndlessRecyclerOnScrollListener"


# instance fields
.field private current_page:I

.field firstVisibleItem:I

.field private forceCantLoadMore:Z

.field private loading:Z

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private previousTotal:I

.field totalItemCount:I

.field visibleItemCount:I

.field private visibleThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->previousTotal:I

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->loading:Z

    const/4 v1, 0x5

    .line 12
    iput v1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->visibleThreshold:I

    .line 14
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->forceCantLoadMore:Z

    .line 16
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->current_page:I

    .line 21
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public forceCantLoadMore(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->forceCantLoadMore:Z

    return-void
.end method

.method public abstract onLoadMore(I)V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 28
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->visibleItemCount:I

    .line 29
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result p1

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->totalItemCount:I

    .line 30
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->firstVisibleItem:I

    .line 32
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->loading:Z

    if-eqz p1, :cond_0

    .line 33
    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iget p2, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->previousTotal:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->loading:Z

    .line 35
    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->previousTotal:I

    .line 38
    :cond_0
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->loading:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->totalItemCount:I

    iget p2, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->visibleItemCount:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->firstVisibleItem:I

    iget p3, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->visibleThreshold:I

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->forceCantLoadMore:Z

    if-nez p1, :cond_1

    .line 43
    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->current_page:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->current_page:I

    .line 45
    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->current_page:I

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->onLoadMore(I)V

    .line 47
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->loading:Z

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->current_page:I

    .line 53
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->loading:Z

    .line 54
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->forceCantLoadMore:Z

    .line 55
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->previousTotal:I

    return-void
.end method
