.class public Lcom/sherdle/universal/providers/rss/RssAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "RssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;,
        Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;
    }
.end annotation


# static fields
.field private static COMPACT:I = 0x0

.field private static NORMAL:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/rss/RSSItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/rss/RSSItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 38
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    .line 41
    new-instance p2, Lcom/sherdle/universal/util/ViewModeUtils;

    const-class v0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-direct {p2, p1, v0}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/rss/RssAdapter;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/rss/RssAdapter;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    return-object p0
.end method

.method private loadImageIntoView(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/sherdle/universal/providers/rss/RssAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/rss/RssAdapter$2;-><init>(Lcom/sherdle/universal/providers/rss/RssAdapter;Landroid/widget/ImageView;)V

    .line 139
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p2

    .line 142
    invoke-virtual {p2, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 145
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setOnClickListener(Landroid/view/View;I)V
    .locals 1

    .line 98
    new-instance v0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/rss/RssAdapter$1;-><init>(Lcom/sherdle/universal/providers/rss/RssAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 68
    instance-of v0, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;

    .line 71
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;->getRowDescription()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listPubdate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/rss/RSSItem;->getPubdate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;->getThumburl()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listThumb:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/rss/RssAdapter;->loadImageIntoView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 81
    iget-object p1, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setOnClickListener(Landroid/view/View;I)V

    goto :goto_0

    .line 83
    :cond_0
    check-cast p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;

    .line 85
    iget-object v0, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->headlineView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->reportedDateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/rss/RSSItem;->getPubdate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;->getThumburl()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/rss/RssAdapter;->loadImageIntoView(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 92
    iget-object p1, p1, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setOnClickListener(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected getCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 54
    sget v0, Lcom/sherdle/universal/providers/rss/RssAdapter;->COMPACT:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0059

    .line 56
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;-><init>(Lcom/sherdle/universal/providers/rss/RssAdapter;Landroid/view/View;)V

    return-object p2

    .line 58
    :cond_0
    sget v0, Lcom/sherdle/universal/providers/rss/RssAdapter;->NORMAL:I

    if-ne p2, v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0084

    .line 60
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewType(I)I
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p1}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 47
    sget p1, Lcom/sherdle/universal/providers/rss/RssAdapter;->NORMAL:I

    return p1

    .line 49
    :cond_0
    sget p1, Lcom/sherdle/universal/providers/rss/RssAdapter;->COMPACT:I

    return p1
.end method
