.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;
.super Ljava/lang/Object;
.source "NativeVideoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;,
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;,
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;
    }
.end annotation


# instance fields
.field protected callback:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;

.field protected clearableSurface:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

.field protected context:Landroid/content/Context;

.field protected currentBufferPercent:I

.field protected currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field protected onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected playRequested:Z

.field protected requestedSeek:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 75
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    .line 92
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->context:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->callback:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    .line 94
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->clearableSurface:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    .line 96
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->initMediaPlayer()V

    .line 97
    sget-object p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    return-void
.end method


# virtual methods
.method public getBufferPercentage()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentBufferPercent:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected initMediaPlayer()V
    .locals 2

    .line 335
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 337
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 338
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 339
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 340
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 341
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 342
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 343
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 345
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 346
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isReady()Z
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 329
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    :cond_0
    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 319
    iget-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    .line 322
    :cond_1
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method protected openVideo(Landroid/net/Uri;)V
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 358
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentBufferPercent:I

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 362
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 363
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 365
    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContentValues"

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    sget-object p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 370
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->onError(Landroid/media/MediaPlayer;II)Z

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 113
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    return-void
.end method

.method public restart()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const-wide/16 v0, 0x0

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    .line 214
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 217
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 218
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public seekTo(J)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-wide/16 p1, 0x0

    .line 138
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    goto :goto_0

    .line 140
    :cond_0
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    :goto_0
    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 244
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 247
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 248
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 278
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 268
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 310
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 288
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 2

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 159
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 160
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 162
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 234
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->headers:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 235
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->requestedSeek:J

    const/4 p2, 0x0

    .line 236
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 238
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->openVideo(Landroid/net/Uri;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 103
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    :cond_0
    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    .line 107
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 3

    .line 175
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 177
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContentValues"

    const-string v2, "stopPlayback: error calling mediaPlayer.stop()"

    .line 181
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->clearableSurface:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearSurfaceWhenReady(Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 3

    .line 196
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->currentState:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 200
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContentValues"

    const-string v2, "stopPlayback: error calling mediaPlayer.reset() or mediaPlayer.release()"

    .line 202
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->playRequested:Z

    return-void
.end method
