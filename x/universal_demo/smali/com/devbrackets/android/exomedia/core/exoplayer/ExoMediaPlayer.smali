.class public Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
.super Ljava/lang/Object;
.source "ExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;,
        Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
    }
.end annotation


# static fields
.field private static final BUFFER_REPEAT_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ExoMediaPlayer"

.field private static final WAKE_LOCK_TIMEOUT:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private audioSessionId:I

.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private bufferRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private capabilitiesListener:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private captionListener:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private drmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mediaSourceProvider:Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private prepared:Z

.field private renderers:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private surface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private wakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 109
    new-instance v1, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    .line 111
    new-instance v1, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v1}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 120
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    .line 122
    new-instance v1, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;

    invoke-direct {v1}, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSourceProvider:Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;

    .line 124
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 136
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    new-instance v1, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    invoke-direct {v1, p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->capabilitiesListener:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    .line 141
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    .line 144
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->context:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->setRepeaterDelay(I)V

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;

    invoke-direct {v1, p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->setRepeatListener(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    .line 151
    new-instance v9, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;

    invoke-direct {v9, p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    .line 152
    new-instance v0, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;

    iget-object v5, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    move-object v3, v0

    move-object v4, p1

    move-object v6, v9

    move-object v7, v9

    move-object v8, v9

    invoke-direct/range {v3 .. v9}, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/text/TextRenderer$Output;Lcom/google/android/exoplayer2/metadata/MetadataRenderer$Output;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->generateDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)V

    .line 155
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/renderer/RendererProvider;->generate()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    .line 157
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    .line 158
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 160
    sget-object p1, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Renderer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 162
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->drmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    return p1
.end method

.method static synthetic access$900(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private reportPlayerState()V
    .locals 7

    .line 561
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 562
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v1

    .line 564
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v2, v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getState(ZI)I

    move-result v2

    .line 565
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->getMostRecentState()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 566
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v3, v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->setMostRecentState(ZI)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v4, :cond_0

    .line 570
    invoke-direct {p0, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    goto :goto_0

    :cond_0
    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 572
    invoke-direct {p0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    .line 578
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    invoke-virtual {v2, v6, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v2

    .line 579
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-virtual {v6, v4, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v4

    or-int/2addr v2, v4

    .line 580
    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v4, v3, v5}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->matchesHistory([IZ)Z

    move-result v3

    or-int/2addr v2, v3

    .line 582
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 583
    invoke-interface {v4, v0, v1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onStateChanged(ZI)V

    if-eqz v2, :cond_3

    .line 586
    invoke-interface {v4}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onSeekComplete()V

    goto :goto_1

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x64
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x64
        0x3
        0x2
        0x3
    .end array-data
.end method

.method private setBufferRepeaterStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/util/Repeater;->start()V

    goto :goto_0

    .line 596
    :cond_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/util/Repeater;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blockingClearSurface()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 270
    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    return-void
.end method

.method public forcePrepare()V
    .locals 1

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    return-void
.end method

.method protected generateDrmSessionManager()Lcom/google/android/exoplayer2/drm/DrmSessionManager;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    return-object v1

    .line 550
    :cond_0
    sget-object v4, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 553
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v4}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v5

    new-instance v6, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;

    invoke-direct {v6, p0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->capabilitiesListener:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ExoMediaPlayer"

    const-string v3, "Unable to create a DrmSessionManager due to an exception"

    .line 555
    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 418
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->audioSessionId:I

    return v0
.end method

.method public getAvailableTracks()Ljava/util/Map;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 285
    :cond_0
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x4

    .line 292
    new-array v3, v3, [Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    aput-object v4, v3, v1

    const/4 v1, 0x2

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    sget-object v4, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->METADATA:Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;

    aput-object v4, v3, v1

    .line 293
    array-length v1, v3

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v4, v3, v5

    .line 294
    invoke-virtual {p0, v4}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getExoPlayerTrackType(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I

    move-result v6

    .line 295
    iget v7, v2, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-le v7, v6, :cond_2

    .line 296
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getExoPlayerTrackType(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 480
    sget-object v0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;->$SwitchMap$com$devbrackets$android$exomedia$ExoMedia$RendererType:[I

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    return p1

    :pswitch_0
    const/4 p1, 0x4

    return p1

    :pswitch_1
    const/4 p1, 0x3

    return p1

    :pswitch_2
    const/4 p1, 0x2

    return p1

    :pswitch_3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getSelectedTrackIndex(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I
    .locals 3
    .param p1    # Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 305
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getExoPlayerTrackType(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I

    move-result p1

    .line 306
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 308
    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v2, :cond_1

    goto :goto_2

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v2, p1, :cond_3

    iget p1, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->length:I

    if-gtz p1, :cond_2

    goto :goto_1

    .line 318
    :cond_2
    iget-object p1, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    :cond_3
    :goto_1
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 198
    invoke-interface {v1, p0, p1}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->onError(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->reportPlayerState()V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 352
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->reset()V

    .line 361
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 364
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    .line 406
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    .line 409
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 410
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method public removeListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public restart()Z
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-wide/16 v2, 0x0

    .line 395
    invoke-virtual {p0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    .line 396
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->forcePrepare()V

    .line 399
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    return v1
.end method

.method public seekTo(J)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 381
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stateStore:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->isLastReportedPlayWhenReady()Z

    move-result p2

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$StateStore;->setMostRecentState(ZI)V

    return-void
.end method

.method protected sendMessage(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    return-void
.end method

.method protected sendMessage(IILjava/lang/Object;Z)V
    .locals 4

    .line 499
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 503
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->renderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Renderer;

    .line 505
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 506
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {v3, v2, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 511
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_1

    .line 513
    :cond_3
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    :goto_1
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 238
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 239
    :goto_0
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferRepeaterStarted(Z)V

    return-void
.end method

.method public setCaptionListener(Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 247
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->captionListener:Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 211
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->drmCallback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    return-void
.end method

.method public setInternalErrorListener(Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 243
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->internalErrorListener:Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p1, 0x0

    .line 221
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepared:Z

    .line 222
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    return-void
.end method

.method public setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 251
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 2

    .line 422
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    .line 423
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSelectedTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 4
    .param p1    # Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 323
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getExoPlayerTrackType(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;)I

    move-result p1

    .line 324
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 326
    iget v1, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    .line 331
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    .line 332
    array-length p2, v2

    if-ne p2, v1, :cond_2

    new-instance p2, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->adaptiveTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    .line 333
    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    invoke-direct {v1, p2, p1, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    .line 336
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 255
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->surface:Landroid/view/Surface;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;Z)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mediaSourceProvider:Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;->generate(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 340
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 461
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 464
    iput-object v2, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 468
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "power"

    .line 469
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 470
    const-class v2, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 471
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_2

    :cond_2
    const-string p1, "ExoMediaPlayer"

    const-string p2, "Unable to acquire WAKE_LOCK due to missing manifest permission"

    .line 473
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_2
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method protected stayAwake(Z)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 531
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 532
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 370
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    :cond_0
    return-void
.end method
