.class public Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;
.super Landroid/support/v4/app/Fragment;
.source "SoundCloudFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;
.implements Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;
.implements Lcom/sherdle/universal/inherit/BackPressFragment;
.implements Lcom/sherdle/universal/inherit/CollapseControllingFragment;


# static fields
.field private static final PER_PAGE:I = 0x14


# instance fields
.field private ll:Landroid/widget/FrameLayout;

.field private mAct:Landroid/app/Activity;

.field private mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

.field private mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

.field private mEndlessRecyclerOnScrollListener:Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;

.field private mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

.field private mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

.field private mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mPlaylistTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistTracksListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

.field private mRetrieveTracksListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

.field private mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRetrievedTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->showTrackActionsPopup(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->loadTracks(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mEndlessRecyclerOnScrollListener:Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrievedTracks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/app/Activity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initPlayer()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object p0

    return-object p0
.end method

.method private initPlayer()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    sget-object v2, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_CLASS:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 125
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;-><init>()V

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    .line 126
    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->from(Landroid/content/Context;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;

    move-result-object v0

    const v2, 0x7f0f00f1

    .line 127
    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->with(I)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;

    move-result-object v0

    new-instance v2, Lcom/sherdle/universal/HolderActivity;

    invoke-direct {v2}, Lcom/sherdle/universal/HolderActivity;-><init>()V

    .line 128
    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationActivity(Landroid/app/Activity;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;

    move-result-object v0

    const v2, 0x7f0800d5

    .line 129
    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationIcon(I)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationBundle(Landroid/os/Bundle;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->build()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    return-object v0
.end method

.method private initPlaylistTracksRecyclerView()V
    .locals 5

    .line 429
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$8;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$8;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracksListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    .line 441
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    .line 442
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->setListener(Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView$Listener;)V

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    .line 445
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracksListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    .line 446
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->setHeaderView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 451
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v3, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;II)V

    .line 498
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 501
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private initRetrieveTracksRecyclerView()V
    .locals 4

    .line 381
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrievedTracks:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrievedTracks:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    .line 410
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->setModeAndNotify(I)V

    .line 411
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 413
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 414
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 415
    new-instance v1, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;

    invoke-direct {v1, p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mEndlessRecyclerOnScrollListener:Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;

    .line 425
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mEndlessRecyclerOnScrollListener:Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private loadTracks(I)V
    .locals 6

    mul-int/lit8 v5, p1, 0x14

    .line 287
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    const v3, 0x7f0b0080

    .line 288
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->setFooterView(Landroid/view/View;)V

    .line 289
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->notifyDataSetChanged()V

    .line 291
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 294
    array-length p1, v3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    aget-object p1, v3, v0

    const-string v0, "wordpress"

    .line 295
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    array-length p1, v3

    if-le p1, v1, :cond_1

    aget-object p1, v3, v1

    const-string v0, "playlist"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 304
    :goto_1
    new-instance p1, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Z[Ljava/lang/String;ZI)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTrackListPadding()V
    .locals 5

    .line 247
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)V

    .line 268
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 271
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 272
    new-instance v2, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$3;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showTrackActionsPopup(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V
    .locals 3

    .line 351
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 352
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {p2, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    new-instance p2, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    invoke-virtual {v0, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 377
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public dynamicToolbarElevation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBackPress()Z
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

    .line 103
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initPlayer()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    .line 105
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initRetrieveTracksRecyclerView()V

    .line 106
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initPlaylistTracksRecyclerView()V

    .line 107
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->setTrackListPadding()V

    .line 110
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getTracks()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->synchronize(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0009

    .line 223
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 224
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mAct:Landroid/app/Activity;

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

    .line 86
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p3, 0x7f0b005a

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->ll:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->setHasOptionsMenu(Z)V

    .line 92
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->ll:Landroid/widget/FrameLayout;

    const p2, 0x7f090145

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 93
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->ll:Landroid/widget/FrameLayout;

    const p2, 0x7f09001b

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 95
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->ll:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->destroy()V

    return-void
.end method

.method public onNextPressed()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->next()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 229
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090123

    if-eq v0, v1, :cond_1

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrievedTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mEndlessRecyclerOnScrollListener:Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->reset()V

    const/4 v0, 0x0

    .line 234
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->loadTracks(I)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrievedTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->addTracks(Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->play()V

    .line 239
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->unregisterPlayerListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;)V

    .line 150
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->unregisterPlayerListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;)V

    .line 151
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->unregisterPlaylistListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "INFO"

    const-string v1, "Unable to unregister player listeners"

    .line 154
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPreviousPressed()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->previous()Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 136
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initPlayer()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->registerPlayerListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;)V

    .line 141
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->registerPlayerListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;)V

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->registerPlaylistListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;)V

    return-void
.end method

.method public onSeekToRequested(I)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->seekTo(I)V

    return-void
.end method

.method public onTogglePlayPressed()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mCheerleaderPlayer:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->togglePlayback()V

    return-void
.end method

.method public onTrackAdded(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 190
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 191
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mRetrieveTracksRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onTrackRemoved(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistAdapter:Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    .line 203
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaybackView:Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/PlaybackView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 204
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->mPlaylistRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public supportsCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
