.class public Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;
.super Landroid/support/v4/app/Fragment;
.source "YoutubeFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# static fields
.field private static TYPE_LIVE:Ljava/lang/String; = "live"

.field private static TYPE_PLAYLIST:Ljava/lang/String; = "playlist"

.field private static TYPE_SEARCH:Ljava/lang/String; = "search"

.field private static TYPE_USER:Ljava/lang/String; = "channel"


# instance fields
.field private currentType:Ljava/lang/String;

.field private isLoading:Z

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field private searchQuery:Ljava/lang/String;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private upcomingPageToken:Ljava/lang/String;

.field private videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

.field private videoApiClient:Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

.field private videoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
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

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->isLoading:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_LIVE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_USER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->upcomingPageToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/VideosAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->currentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->currentType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->isLoading:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->isLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->refreshItems()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_SEARCH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->searchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoApiClient:Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_PLAYLIST:Ljava/lang/String;

    return-object v0
.end method

.method private getPassedData()[Ljava/lang/String;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadVideosInList(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->isLoading:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->upcomingPageToken:Ljava/lang/String;

    .line 168
    :cond_0
    new-instance v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshItems()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setHasMore(Z)V

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setModeAndNotify(I)V

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->loadVideosInList(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIdBasedOnParameters()Ljava/lang/String;
    .locals 2

    .line 300
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your youtube configuration is incorrect, please check your documentation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeBasedOnParameters()Ljava/lang/String;
    .locals 3

    .line 289
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_LIVE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sget-object v2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_USER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sget-object v2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_PLAYLIST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0

    .line 293
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your youtube configuration is incorrect, please check your documentation"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->mAct:Landroid/app/Activity;

    .line 129
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance v0, Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoApiClient:Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    .line 133
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getTypeBasedOnParameters()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->currentType:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 233
    new-instance v0, Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    .line 234
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v0, p1, p2}, Lcom/sherdle/universal/util/ViewModeUtils;->inflateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0004

    .line 236
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    new-instance p2, Landroid/support/v7/widget/SearchView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->mAct:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 259
    invoke-direct {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getPassedData()[Ljava/lang/String;

    .line 261
    new-instance v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 279
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getTypeBasedOnParameters()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->TYPE_PLAYLIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0900f8

    if-nez v0, :cond_0

    .line 280
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 281
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    .line 283
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    :goto_0
    iget-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 72
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p3, 0x7f0b0052

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->ll:Landroid/widget/RelativeLayout;

    .line 75
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->upcomingPageToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->isLoading:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->upcomingPageToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->loadVideosInList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    new-instance v1, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$6;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$6;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/sherdle/universal/util/ViewModeUtils;->handleSelection(Landroid/view/MenuItem;Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;)Z

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 317
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->setHasOptionsMenu(Z)V

    .line 84
    new-instance p2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->ll:Landroid/widget/RelativeLayout;

    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 105
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->ll:Landroid/widget/RelativeLayout;

    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    .line 108
    iget-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setModeAndNotify(I)V

    .line 109
    iget-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->ll:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->upcomingPageToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    invoke-virtual {p1, v1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setHasMore(Z)V

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->videoAdapter:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setModeAndNotify(I)V

    .line 155
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
