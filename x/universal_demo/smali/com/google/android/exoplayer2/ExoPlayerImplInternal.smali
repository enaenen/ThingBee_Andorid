.class final Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;,
        Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    }
.end annotation


# static fields
.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MAXIMUM_BUFFER_AHEAD_PERIODS:I = 0x64

.field private static final MSG_CUSTOM:I = 0xb

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field public static final MSG_ERROR:I = 0x8

.field public static final MSG_LOADING_CHANGED:I = 0x2

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field public static final MSG_PLAYBACK_PARAMETERS_CHANGED:I = 0x7

.field public static final MSG_POSITION_DISCONTINUITY:I = 0x5

.field private static final MSG_PREPARE:I = 0x0

.field public static final MSG_PREPARE_ACK:I = 0x0

.field private static final MSG_REFRESH_SOURCE_INFO:I = 0x7

.field private static final MSG_RELEASE:I = 0x6

.field public static final MSG_SEEK_ACK:I = 0x4

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field public static final MSG_SOURCE_INFO_REFRESHED:I = 0x6

.field public static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_STOP:I = 0x5

.field public static final MSG_TRACKS_CHANGED:I = 0x3

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PREPARING_SOURCE_INTERVAL_MS:I = 0xa

.field private static final RENDERER_TIMESTAMP_OFFSET_US:I = 0x3938700

.field private static final RENDERING_INTERVAL_MS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private customMessagesProcessed:I

.field private customMessagesSent:I

.field private elapsedRealtimeUs:J

.field private enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final eventHandler:Landroid/os/Handler;

.field private final handler:Landroid/os/Handler;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isLoading:Z

.field private final loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private pendingInitialSeekCount:I

.field private pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

.field private rebuffering:Z

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

.field private rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private state:I

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 176
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 177
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 178
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    .line 179
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    .line 180
    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 181
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 182
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 184
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/exoplayer2/RendererCapabilities;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 185
    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    .line 186
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/exoplayer2/Renderer;->setIndex(I)V

    .line 187
    iget-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/exoplayer2/Renderer;->getCapabilities()Lcom/google/android/exoplayer2/RendererCapabilities;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 190
    new-array p1, p3, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 191
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 192
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 193
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;)V

    .line 194
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 198
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayerImplInternal:Handler"

    const/16 p3, -0x10

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 200
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    return-void
.end method

.method private doSomeWork()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 460
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePeriods()V

    .line 461
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 464
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    :cond_0
    const-string v3, "doSomeWork"

    .line 468
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 471
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-interface {v3, v6, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    .line 475
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_0
    if-ge v9, v6, :cond_6

    aget-object v12, v3, v9

    .line 479
    iget-wide v13, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    invoke-interface {v12, v13, v14, v7, v8}, Lcom/google/android/exoplayer2/Renderer;->render(JJ)V

    if-eqz v10, :cond_1

    .line 480
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 483
    :goto_1
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_4

    .line 485
    invoke-interface {v12}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    :cond_4
    if-eqz v11, :cond_5

    if-eqz v7, :cond_5

    const/4 v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_6
    if-nez v11, :cond_7

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeThrowPeriodPrepareError()V

    .line 495
    :cond_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v3, :cond_8

    .line 496
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v3

    .line 497
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 500
    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 501
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V

    .line 502
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 507
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v6

    const/4 v3, 0x3

    const/4 v8, 0x2

    if-eqz v10, :cond_a

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v6, v9

    if-eqz v12, :cond_9

    .line 509
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v9, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v12, v6, v9

    if-gtz v12, :cond_a

    :cond_9
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v9, :cond_a

    const/4 v6, 0x4

    .line 513
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_7

    .line 515
    :cond_a
    iget v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v9, v8, :cond_d

    .line 516
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v9, v9

    if-lez v9, :cond_c

    if-eqz v11, :cond_b

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 517
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->haveSufficientBuffer(Z)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v16, 0x1

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    .line 518
    :cond_c
    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v7

    move/from16 v16, v7

    :goto_5
    if-eqz v16, :cond_f

    .line 520
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 521
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v6, :cond_f

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_7

    .line 525
    :cond_d
    iget v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v9, v3, :cond_f

    .line 526
    iget-object v9, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v9, v9

    if-lez v9, :cond_e

    goto :goto_6

    .line 527
    :cond_e
    invoke-direct {v0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isTimelineReady(J)Z

    move-result v11

    :goto_6
    if-nez v11, :cond_f

    .line 529
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 530
    invoke-direct {v0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 531
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 535
    :cond_f
    :goto_7
    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v6, v8, :cond_10

    .line 536
    iget-object v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v7, v6

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v7, :cond_10

    aget-object v9, v6, v15

    .line 537
    invoke-interface {v9}, Lcom/google/android/exoplayer2/Renderer;->maybeThrowStreamError()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 541
    :cond_10
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-eqz v6, :cond_11

    iget v6, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v6, v3, :cond_12

    :cond_11
    iget v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne v3, v8, :cond_13

    .line 542
    :cond_12
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 543
    :cond_13
    iget-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v3

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x3e8

    .line 544
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_9

    .line 546
    :cond_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :goto_9
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-void
.end method

.method private enableRenderers([ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1387
    new-array p2, p2, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1389
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 1390
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    .line 1391
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1393
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    add-int/lit8 v12, v1, 0x1

    aput-object v2, v4, v1

    .line 1394
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v1

    if-nez v1, :cond_5

    .line 1395
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v4, v1, v0

    .line 1398
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 1400
    :goto_1
    aget-boolean v6, p1, v0

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 1402
    :goto_2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/exoplayer2/Format;

    const/4 v6, 0x0

    .line 1403
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 1404
    invoke-interface {v3, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1407
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v3, v0

    iget-wide v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1408
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v10

    move-object v3, v2

    .line 1407
    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/Renderer;->enable(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;JZJ)V

    .line 1409
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1411
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v4, :cond_3

    .line 1412
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Multiple renderer media clocks enabled."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 1415
    :cond_3
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1416
    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1417
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    :cond_4
    if-eqz v1, :cond_5

    .line 1421
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->start()V

    :cond_5
    move v1, v12

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 749
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 750
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method private getPeriodPosition(IJ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1093
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1111
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 1112
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_0

    .line 1114
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p3

    cmp-long p2, p3, p5

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1119
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget p2, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long v2, v0, p3

    .line 1121
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide p3

    :goto_0
    cmp-long v0, p3, p5

    if-eqz v0, :cond_1

    cmp-long v0, v2, p3

    if-ltz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge p2, v0, :cond_1

    sub-long v0, v2, p3

    add-int/lit8 p2, p2, 0x1

    .line 1125
    iget-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide p3

    move-wide v2, v0

    goto :goto_0

    .line 1127
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1320
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->handlePrepared()V

    .line 1306
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez p1, :cond_1

    .line 1308
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1309
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1310
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1312
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V
    .locals 4

    .line 999
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1000
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    .line 1002
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const/4 p1, 0x4

    .line 1003
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 1005
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    return-void
.end method

.method private handleSourceInfoRefreshed(Landroid/util/Pair;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 883
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 884
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 885
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 889
    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    if-lez v5, :cond_1

    .line 890
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v5

    .line 891
    iget v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 892
    iput v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 893
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    if-nez v5, :cond_0

    .line 897
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    return-void

    .line 900
    :cond_0
    new-instance v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    goto :goto_0

    .line 901
    :cond_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_3

    .line 902
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 903
    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    return-void

    .line 906
    :cond_2
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v5

    .line 907
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    :cond_3
    const/4 v6, 0x0

    .line 911
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_1
    if-nez v5, :cond_5

    .line 915
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    return-void

    .line 919
    :cond_5
    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v7, v8, :cond_9

    .line 923
    iget v1, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 926
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshEndedPlayback(Ljava/lang/Object;I)V

    return-void

    .line 930
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 931
    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 930
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object v0

    .line 932
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 933
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 934
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v4, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 937
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 938
    iput v8, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 939
    :goto_2
    iget-object v4, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v4, :cond_8

    .line 940
    iget-object v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 941
    iget-object v4, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    const/4 v4, -0x1

    :goto_3
    iput v4, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    goto :goto_2

    .line 944
    :cond_8
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v2

    .line 945
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 946
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    return-void

    .line 951
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v7, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    sub-int/2addr v0, v9

    if-ne v7, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 953
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 954
    :goto_4
    invoke-virtual {v5, v7, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v5, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 956
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-eq v7, v2, :cond_c

    .line 957
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 962
    :cond_c
    :goto_6
    iget-object v2, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_11

    .line 964
    iget-object v2, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    add-int/2addr v7, v9

    .line 966
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v3, v7, v8, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 967
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v3

    sub-int/2addr v3, v9

    if-ne v7, v3, :cond_d

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v8, v8, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 968
    invoke-virtual {v3, v8, v10}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    .line 969
    :goto_7
    iget-object v8, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->uid:Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v10, v10, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 971
    invoke-virtual {v2, v7, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->setIndex(IZ)V

    .line 972
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v2, v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    or-int/2addr v0, v3

    move-object v5, v2

    goto :goto_6

    :cond_f
    if-nez v0, :cond_10

    .line 978
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 979
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v1

    .line 980
    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    goto :goto_9

    .line 984
    :cond_10
    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 985
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 987
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 993
    :cond_11
    :goto_9
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->notifySourceInfoRefresh(Ljava/lang/Object;I)V

    return-void
.end method

.method private haveSufficientBuffer(Z)Z
    .locals 7

    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 856
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 858
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 865
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long v5, v0, v3

    .line 864
    invoke-interface {v2, v5, v6, p1}, Lcom/google/android/exoplayer2/LoadControl;->shouldStartPlayback(JZ)Z

    move-result p1

    return p1
.end method

.method private isTimelineReady(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 848
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private maybeContinueLoading()V
    .locals 7

    .line 1324
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1325
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    const/4 v2, 0x0

    if-nez v4, :cond_1

    .line 1327
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    goto :goto_1

    .line 1329
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long v5, v0, v3

    .line 1331
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v0, v5, v6}, Lcom/google/android/exoplayer2/LoadControl;->shouldContinueLoading(J)Z

    move-result v0

    .line 1332
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz v0, :cond_2

    .line 1334
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    .line 1335
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    goto :goto_1

    .line 1337
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    :goto_1
    return-void
.end method

.method private maybeThrowPeriodPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, v1, :cond_3

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 873
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    :cond_3
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1228
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v8, 0x1

    if-nez v0, :cond_0

    .line 1229
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    goto :goto_0

    .line 1231
    :cond_0
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    .line 1232
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-nez v1, :cond_a

    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1233
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 1238
    :cond_1
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v1, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    return-void

    .line 1243
    :cond_2
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    add-int/2addr v0, v8

    .line 1246
    :goto_0
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 1248
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 1253
    :cond_3
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    .line 1254
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    :goto_1
    move-wide/from16 v20, v2

    goto :goto_2

    .line 1256
    :cond_4
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    .line 1257
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1258
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-eq v0, v1, :cond_5

    goto :goto_1

    .line 1268
    :cond_5
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v9, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1269
    invoke-virtual {v5, v6, v9}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    add-long v9, v0, v5

    iget-wide v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    sub-long v5, v9, v0

    .line 1271
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 1272
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object v0, v7

    move v2, v4

    move-wide v3, v9

    .line 1271
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 1277
    :cond_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1278
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move v0, v1

    goto :goto_1

    .line 1282
    :goto_2
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v1, :cond_7

    const-wide/32 v1, 0x3938700

    add-long v3, v20, v1

    move-wide v12, v3

    goto :goto_3

    :cond_7
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1284
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v4, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v5, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1285
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v3

    add-long v5, v1, v3

    move-wide v12, v5

    .line 1286
    :goto_3
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v0, v2, v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1287
    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    sub-int/2addr v1, v8

    if-ne v0, v1, :cond_8

    iget-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    iget-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 1288
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v1, :cond_8

    const/16 v19, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    const/16 v19, 0x0

    .line 1289
    :goto_4
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v10, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    iget-object v11, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplayer2/RendererCapabilities;

    iget-object v14, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    iget-object v15, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    iget-object v2, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    move-object v9, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v0

    invoke-direct/range {v9 .. v21}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;-><init>([Lcom/google/android/exoplayer2/Renderer;[Lcom/google/android/exoplayer2/RendererCapabilities;JLcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/source/MediaSource;Ljava/lang/Object;IZJ)V

    .line 1292
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_9

    .line 1293
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1295
    :cond_9
    iput-object v1, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1296
    iget-object v0, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v7}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V

    .line 1297
    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    return-void

    :cond_a
    :goto_5
    return-void
.end method

.method private notifySourceInfoRefresh(Ljava/lang/Object;I)V
    .locals 4

    .line 1009
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SourceInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1010
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    .line 387
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 388
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/LoadControl;->onPrepared()V

    if-eqz p2, :cond_0

    .line 390
    new-instance p2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p2, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 393
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    const/4 p1, 0x2

    .line 394
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 395
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .locals 2

    const/4 v0, 0x1

    .line 690
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 691
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->onReleased()V

    .line 692
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 693
    monitor-enter p0

    .line 694
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    .line 695
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 696
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 0

    :goto_0
    if-eqz p1, :cond_0

    .line 1344
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1345
    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reselectTracksInternal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    return-void

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_10

    .line 763
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_1

    goto/16 :goto_7

    .line 767
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->selectTracks()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 780
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 781
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v5, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 782
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, v5, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 783
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 784
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 786
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    new-array v5, v5, [Z

    .line 787
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v7, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    invoke-virtual {v6, v7, v8, v2, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ[Z)J

    move-result-wide v6

    .line 789
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v8, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3

    .line 790
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v6, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 791
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 795
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 796
    :goto_2
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v8, v8

    if-ge v6, v8, :cond_a

    .line 797
    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v8, v8, v6

    .line 798
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    aput-boolean v9, v2, v6

    .line 799
    iget-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v9, v9, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v9, v9, v6

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 803
    :cond_5
    aget-boolean v10, v2, v6

    if-eqz v10, :cond_9

    .line 804
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v10

    if-eq v9, v10, :cond_8

    .line 806
    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v8, v10, :cond_7

    if-nez v9, :cond_6

    .line 811
    iget-object v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v10, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V

    .line 813
    :cond_6
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 814
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 816
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 817
    invoke-interface {v8}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    goto :goto_4

    .line 818
    :cond_8
    aget-boolean v9, v5, v6

    if-eqz v9, :cond_9

    .line 820
    iget-wide v9, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v8, v9, v10}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 824
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 826
    invoke-direct {p0, v2, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    goto :goto_6

    .line 829
    :cond_b
    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 830
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_5
    if-eqz v0, :cond_c

    .line 832
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 833
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_5

    .line 835
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_d

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 838
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    .line 837
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 839
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->updatePeriodTrackSelection(JZ)J

    .line 842
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 843
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 771
    :cond_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, v3, :cond_f

    const/4 v2, 0x0

    .line 775
    :cond_f
    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto/16 :goto_0

    :cond_10
    :goto_7
    return-void
.end method

.method private resetInternal(Z)V
    .locals 8

    .line 700
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 702
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    const/4 v1, 0x0

    .line 703
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 704
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    const-wide/32 v2, 0x3938700

    .line 705
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 706
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 708
    :try_start_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 709
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->disable()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 712
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 715
    :cond_0
    new-array v2, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 716
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releasePeriodHoldersFrom(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 718
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 719
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 720
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 721
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    if-eqz p1, :cond_3

    .line 723
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz p1, :cond_2

    .line 724
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    .line 725
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 727
    :cond_2
    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    :cond_3
    return-void
.end method

.method private resetRendererPosition(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    add-long v2, p1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 668
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 669
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    .line 670
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 671
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/Renderer;->resetPosition(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1043
    iget-object v0, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1044
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 1052
    :cond_0
    :try_start_0
    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(Lcom/google/android/exoplayer2/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-ne p1, v0, :cond_1

    return-object v1

    .line 1064
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 1065
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1064
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 1068
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1071
    :cond_2
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->getPeriodPosition(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 1056
    :catch_0
    new-instance v0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v3, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    throw v0
.end method

.method private resolveSubsequentPeriod(ILcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline;)I
    .locals 4

    const/4 v0, -0x1

    move v1, p1

    const/4 p1, -0x1

    :goto_0
    if-ne p1, v0, :cond_0

    .line 1026
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1027
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1028
    invoke-virtual {p2, v1, p1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1027
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private scheduleNextWork(JJ)V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long v2, p1, p3

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long p3, v2, p1

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    .line 557
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 565
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingInitialSeekCount:I

    .line 566
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->pendingSeekPosition:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    return-void

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resolveSeekPosition(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)Landroid/util/Pair;

    move-result-object v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 574
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    const-wide/16 v6, 0x0

    invoke-direct {p1, v5, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 575
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {p1, v4, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 578
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {p1, v5, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 579
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 581
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    return-void

    .line 585
    :cond_1
    iget-wide v6, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 586
    :goto_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 587
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    if-ne v2, v0, :cond_3

    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    div-long/2addr v12, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v10, v12

    if-nez v0, :cond_3

    .line 599
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v2, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v4, p1, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 595
    :cond_3
    :try_start_1
    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToPeriodPosition(IJ)J

    move-result-wide v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    or-int/2addr p1, v0

    .line 599
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v0, v2, v8, v9}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v4, v1, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    .line 599
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-direct {v1, v2, v6, v7}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 600
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v1, v4, p1, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method

.method private seekToPeriodPosition(IJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    const/4 v1, 0x2

    .line 609
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    .line 612
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 614
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz p1, :cond_0

    .line 615
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 621
    iget v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 626
    :goto_1
    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    goto :goto_0

    .line 632
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne p1, v4, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq p1, v2, :cond_6

    .line 634
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 635
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 637
    :cond_5
    new-array p1, v0, [Lcom/google/android/exoplayer2/Renderer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 638
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 639
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 640
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    :cond_6
    if-eqz v4, :cond_8

    .line 645
    iput-object v3, v4, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 646
    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 647
    iput-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 648
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 649
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_7

    .line 650
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 652
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_4

    .line 655
    :cond_8
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 656
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 657
    iput-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 658
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 661
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 733
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 734
    iget-object v3, v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;

    iget v4, v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;->handleMessage(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz p1, :cond_1

    .line 738
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 741
    :cond_1
    monitor-enter p0

    .line 742
    :try_start_1
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 744
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 741
    monitor-enter p0

    .line 742
    :try_start_2
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I

    .line 743
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 744
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private setIsLoading(Z)V
    .locals 3

    .line 379
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    if-eq v0, p1, :cond_0

    .line 380
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->isLoading:Z

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private setPlayWhenReadyInternal(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 400
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playWhenReady:Z

    if-nez p1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopRenderers()V

    .line 403
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_0

    .line 405
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->startRenderers()V

    .line 407
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 408
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-ne p1, v1, :cond_2

    .line 409
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 677
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 678
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    .line 679
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-ne v0, p1, :cond_0

    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1356
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v4, v4

    if-ge v2, v4, :cond_6

    .line 1357
    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v4, v4, v2

    .line 1358
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getState()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v2

    .line 1359
    iget-object v5, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, v5, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 1363
    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    .line 1364
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1365
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_5

    .line 1369
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne v4, v5, :cond_4

    .line 1371
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->synchronize(Lcom/google/android/exoplayer2/util/MediaClock;)V

    const/4 v5, 0x0

    .line 1372
    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 1373
    iput-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 1375
    :cond_4
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    .line 1376
    invoke-interface {v4}, Lcom/google/android/exoplayer2/Renderer;->disable()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1380
    :cond_6
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1381
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1382
    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enableRenderers([ZI)V

    return-void
.end method

.method private setState(I)V
    .locals 3

    .line 372
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    if-eq v0, p1, :cond_0

    .line 373
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->state:I

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private startRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rebuffering:Z

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    .line 417
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 418
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopInternal()V
    .locals 2

    const/4 v0, 0x1

    .line 684
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetInternal(Z)V

    .line 685
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/LoadControl;->onStopped()V

    .line 686
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 425
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplayer2/Renderer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePeriods()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 1138
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1139
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->loadingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->needsContinueLoading:Z

    if-eqz v0, :cond_3

    .line 1142
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_1

    .line 1140
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setIsLoading(Z)V

    .line 1145
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_4

    return-void

    .line 1151
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eq v0, v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->rendererPositionOffsetUs:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 1155
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->release()V

    .line 1156
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayingPeriodHolder(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;)V

    .line 1157
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->startPositionUs:J

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    .line 1159
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1160
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 1163
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->isLast:Z

    if-eqz v0, :cond_8

    .line 1164
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 1165
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v0, v0, v1

    .line 1166
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 1169
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v3

    if-ne v3, v2, :cond_6

    .line 1170
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1171
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x0

    .line 1177
    :goto_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    .line 1178
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v2, v2, v0

    .line 1179
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v3, v3, v0

    .line 1180
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->getStream()Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v4

    if-ne v4, v3, :cond_a

    if-eqz v3, :cond_9

    .line 1181
    invoke-interface {v2}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-void

    .line 1186
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_12

    .line 1187
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1188
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->next:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1189
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 1191
    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v3, v3, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 1192
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    .line 1193
    :goto_7
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1194
    iget-object v5, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    aget-object v5, v5, v4

    .line 1195
    iget-object v6, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v6

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_e

    .line 1201
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    goto :goto_9

    .line 1202
    :cond_e
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->isCurrentStreamFinal()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1203
    iget-object v6, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v6

    .line 1204
    iget-object v7, v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v7, v7, v4

    .line 1205
    iget-object v8, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v8, v8, v4

    if-eqz v6, :cond_10

    .line 1206
    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1209
    invoke-interface {v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/exoplayer2/Format;

    const/4 v8, 0x0

    .line 1210
    :goto_8
    array-length v9, v7

    if-ge v8, v9, :cond_f

    .line 1211
    invoke-interface {v6, v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1213
    :cond_f
    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v6, v6, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplayer2/source/SampleStream;

    aget-object v6, v6, v4

    iget-object v8, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->readingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    .line 1214
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v8

    .line 1213
    invoke-interface {v5, v7, v6, v8, v9}, Lcom/google/android/exoplayer2/Renderer;->replaceStream([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleStream;J)V

    goto :goto_9

    .line 1219
    :cond_10
    invoke-interface {v5}, Lcom/google/android/exoplayer2/Renderer;->setCurrentStreamFinal()V

    :cond_11
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method private updatePlaybackPositions()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    if-nez v0, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 437
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->resetRendererPosition(J)V

    goto :goto_1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererMediaClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPositionUs(J)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 447
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->elapsedRealtimeUs:J

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->enabledRenderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 452
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    .line 453
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->playingPeriodHolder:Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$MediaPeriodHolder;->index:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 454
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v3

    :cond_4
    iput-wide v3, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 237
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 242
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesProcessed:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    .line 244
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 246
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 249
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 298
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    return v3

    .line 344
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->sendMessagesInternal([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return v1

    .line 340
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->reselectTracksInternal()V

    return v1

    .line 336
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return v1

    .line 328
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return v1

    .line 332
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handleSourceInfoRefreshed(Landroid/util/Pair;)V

    return v1

    .line 324
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->releaseInternal()V

    return v1

    .line 320
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    .line 316
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return v1

    .line 312
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;)V

    return v1

    .line 308
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->doSomeWork()V

    return v1

    .line 304
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReadyInternal(Z)V

    return v1

    .line 300
    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->prepareInternal(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    .line 361
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 364
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    :catch_1
    move-exception p1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    .line 356
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForSource(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 358
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    :catch_2
    move-exception p1

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Renderer error."

    .line 351
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->stopInternal()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 253
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 256
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 258
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 251
    monitor-exit p0

    throw v0
.end method

.method public seekTo(Lcom/google/android/exoplayer2/Timeline;IJ)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplayer2/Timeline;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public varargs sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 2

    .line 227
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->released:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 228
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->customMessagesSent:I

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
