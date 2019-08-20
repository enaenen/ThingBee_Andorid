.class public final Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
.super Ljava/lang/Object;
.source "CheerleaderPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    }
.end annotation


# static fields
.field private static final STATE_PAUSED:I = 0x1

.field private static final STATE_PLAYING:I = 0x2

.field private static final STATE_STOPPED:I

.field private static sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;


# instance fields
.field private mApplicationContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCheerleaderPlayerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCheerleaderPlaylistListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClientKey:Ljava/lang/String;

.field private mDestroyDelayed:Z

.field private mInternalListener:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;

.field private mIsClosed:Z

.field private mNotificationManager:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

.field private mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

.field private mState:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mIsClosed:Z

    .line 99
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mDestroyDelayed:Z

    .line 100
    iput p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlayerListeners:Ljava/util/ArrayList;

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlaylistListeners:Ljava/util/ArrayList;

    .line 104
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mApplicationContext:Ljava/lang/ref/WeakReference;

    .line 106
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getInstance()Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    .line 107
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->getInstance(Landroid/content/Context;)Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mNotificationManager:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    .line 109
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->initInternalListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlayerListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mDestroyDelayed:Z

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 1

    .line 20
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->setNotificationConfig(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;)V

    return-void
.end method

.method private checkState()V
    .locals 2

    .line 546
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client instance can\'t be used after being closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mApplicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WeakReference on application context null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mApplicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 1

    if-nez p1, :cond_0

    .line 121
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Sound cloud client id can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iget-boolean v0, v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mIsClosed:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    sget-object p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_2
    :goto_0
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    .line 129
    :goto_1
    sget-object p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mDestroyDelayed:Z

    .line 130
    sget-object p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    return-object p0
.end method

.method private initInternalListener(Landroid/content/Context;)V
    .locals 1

    .line 467
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mInternalListener:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;

    .line 539
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mInternalListener:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->registerListener(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;)V

    return-void
.end method

.method private setNotificationConfig(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mNotificationManager:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->setNotificationConfig(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;)V

    return-void
.end method


# virtual methods
.method public addTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->addTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V

    return-void
.end method

.method public addTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V
    .locals 2

    .line 316
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 317
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->add(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    .line 318
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlaylistListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;

    .line 319
    invoke-interface {v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;->onTrackAdded(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 322
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->play(I)V

    :cond_1
    return-void
.end method

.method public addTracks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;)V"
        }
    .end annotation

    .line 333
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    .line 335
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->addTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mIsClosed:Z

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 148
    iput-boolean v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mDestroyDelayed:Z

    return-void

    .line 151
    :cond_1
    iput-boolean v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mIsClosed:Z

    .line 153
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mInternalListener:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->unregisterListener(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;)V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mInternalListener:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;

    .line 156
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mApplicationContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 157
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mApplicationContext:Ljava/lang/ref/WeakReference;

    .line 159
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    .line 161
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 1

    .line 400
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 401
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mIsClosed:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 375
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Z
    .locals 3

    .line 256
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 257
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->next()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->play(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 223
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->pause(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 225
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 171
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->resume(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->play(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 181
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    return-void
.end method

.method public play(I)V
    .locals 2

    .line 190
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 191
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    .line 194
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->setPlayingTrack(I)V

    .line 195
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->play(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    :cond_0
    return-void
.end method

.method public play(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 2

    .line 209
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 210
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->setPlayingTrack(I)V

    .line 214
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->play(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    :cond_0
    return-void
.end method

.method public previous()Z
    .locals 3

    .line 272
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 273
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->previous()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->play(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    const/4 v0, 0x1

    return v0
.end method

.method public registerPlayerListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;)V
    .locals 2

    .line 410
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 411
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrackIndex()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onPlayerPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;I)V

    goto :goto_0

    .line 414
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 415
    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onPlayerPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerPlaylistListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;)V
    .locals 1

    .line 435
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 436
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlaylistListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTrack(I)V
    .locals 3

    .line 347
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 348
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->remove(I)Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stop(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 359
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrackIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->play(I)V

    .line 364
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlaylistListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;

    .line 365
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->isEmpty()Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;->onTrackRemoved(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 290
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 291
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mClientKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->seekTo(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public togglePlayback()V
    .locals 1

    .line 235
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->pause()V

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->play()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterPlayerListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;)V
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 426
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlayerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterPlaylistListener(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlaylistListener;)V
    .locals 1

    .line 445
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->checkState()V

    .line 446
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->mCheerleaderPlaylistListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
