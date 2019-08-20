.class public Lcom/sherdle/universal/providers/flickr/ImageAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/flickr/ImageAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 26
    iput-object p2, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->listData:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/flickr/ImageAdapter;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->startImagePagerActivity(I)V

    return-void
.end method

.method private startImagePagerActivity(I)V
    .locals 4

    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.nostra13.example.universalimageloader.IMAGES"

    .line 86
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.nostra13.example.universalimageloader.IMAGE_POSITION"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 43
    instance-of v0, p1, Lcom/sherdle/universal/providers/flickr/ImageAdapter$ItemViewHolder;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->listData:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/flickr/FlickrItem;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/flickr/FlickrItem;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0800f7

    .line 46
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/sherdle/universal/providers/flickr/ImageAdapter$ItemViewHolder;

    iget-object v1, v1, Lcom/sherdle/universal/providers/flickr/ImageAdapter$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 50
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/sherdle/universal/providers/flickr/ImageAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/flickr/ImageAdapter$1;-><init>(Lcom/sherdle/universal/providers/flickr/ImageAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b005b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 38
    new-instance p2, Lcom/sherdle/universal/providers/flickr/ImageAdapter$ItemViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sherdle/universal/providers/flickr/ImageAdapter$1;)V

    return-object p2
.end method

.method protected getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
