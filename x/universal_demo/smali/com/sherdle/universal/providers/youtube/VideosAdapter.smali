.class public Lcom/sherdle/universal/providers/youtube/VideosAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "VideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;,
        Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoNormalViewHolder;,
        Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;,
        Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;
    }
.end annotation


# static fields
.field private static final HIGHLIGHT_VIDEO:I = 0x2

.field private static final VIDEO_COMPACT:I = 0x0

.field private static final VIDEO_NORMAL:I = 0x1


# instance fields
.field private clickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
            ">;"
        }
    .end annotation
.end field

.field private viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->videos:Ljava/util/List;

    .line 41
    iput-object p4, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 43
    new-instance p2, Lcom/sherdle/universal/util/ViewModeUtils;

    const-class p3, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-direct {p2, p1, p3}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/youtube/VideosAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->clickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 85
    instance-of v1, p1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, p1

    check-cast v1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;

    .line 88
    iget-object v2, v1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;->thumb:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    instance-of v2, p1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getThumbUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 90
    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 91
    iget-object v2, v1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, v1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getUpdated()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;-><init>(Lcom/sherdle/universal/providers/youtube/VideosAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0073

    .line 66
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;-><init>(Lcom/sherdle/universal/providers/youtube/VideosAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0081

    .line 70
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;-><init>(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object p2

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0084

    .line 76
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoNormalViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoNormalViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getViewType(I)I
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p1}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p1}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
