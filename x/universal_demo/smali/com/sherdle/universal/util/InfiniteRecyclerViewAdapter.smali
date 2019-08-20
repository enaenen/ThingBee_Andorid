.class public abstract Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "InfiniteRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODE_EMPTY:I = 0x2

.field public static final MODE_LIST:I = 0x1

.field public static final MODE_PROGRESS:I = 0x3

.field private static final VIEW_TYPE_EMPTY:I = -0x3

.field private static final VIEW_TYPE_LOAD_MORE:I = -0x1

.field private static final VIEW_TYPE_PROGRESS:I = -0x2


# instance fields
.field private emptyViewButtonListener:Landroid/view/View$OnClickListener;

.field private emptyViewButtonTitle:Ljava/lang/String;

.field private emptyViewSubTitle:Ljava/lang/String;

.field private emptyViewTitle:Ljava/lang/String;

.field private mCurrentMode:I

.field private mEmptyResourceId:I

.field private mHasMore:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;

.field private mMoreResourceId:I

.field private mProgressResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mListener:Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;

    const p1, 0x7f0b0080

    .line 46
    iput p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mMoreResourceId:I

    const p1, 0x7f0b007f

    .line 47
    iput p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mEmptyResourceId:I

    const p1, 0x7f0b0083

    .line 48
    iput p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mProgressResourceId:I

    return-void
.end method


# virtual methods
.method protected abstract doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method

.method protected abstract getCount()I
.end method

.method public final getItemCount()I
    .locals 3

    .line 116
    iget v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mHasMore:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->getCount()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 129
    iget v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p1, -0x3

    return p1

    .line 133
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 p1, -0x2

    return p1

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mHasMore:Z

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 141
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->getViewType(I)I

    move-result p1

    return p1
.end method

.method protected abstract getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method protected abstract getViewType(I)I
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x3

    if-eq v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewSubTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0901a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f090187

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewSubTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewButtonTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f090051

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f090073

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 99
    iget-object p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mListener:Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;

    if-eqz p1, :cond_5

    .line 100
    iget-object p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mListener:Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;

    invoke-interface {p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;->onMoreRequested()V

    goto :goto_0

    .line 101
    :cond_4
    iget v0, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 54
    iget-object p2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mMoreResourceId:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    new-instance p2, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$1;-><init>(Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, -0x3

    if-ne p2, v1, :cond_1

    .line 58
    iget-object p2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mEmptyResourceId:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 60
    new-instance p1, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$2;

    invoke-direct {p1, p0, p2}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$2;-><init>(Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    .line 63
    iget-object p2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mProgressResourceId:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 65
    new-instance p1, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$3;

    invoke-direct {p1, p0, p2}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$3;-><init>(Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;Landroid/view/View;)V

    return-object p1

    .line 68
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 107
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 110
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setEmptyViewButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 159
    iput-object p2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewButtonListener:Landroid/view/View$OnClickListener;

    .line 160
    iput-object p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewButtonTitle:Ljava/lang/String;

    return-void
.end method

.method public setEmptyViewText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p2, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewSubTitle:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->emptyViewTitle:Ljava/lang/String;

    return-void
.end method

.method public setHasMore(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mHasMore:Z

    return-void
.end method

.method public setModeAndNotify(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->mCurrentMode:I

    .line 150
    invoke-virtual {p0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
