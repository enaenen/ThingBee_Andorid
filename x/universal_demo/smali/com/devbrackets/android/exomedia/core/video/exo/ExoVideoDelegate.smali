.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;
.super Ljava/lang/Object;
.source "ExoVideoDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
    }
.end annotation


# instance fields
.field protected clearableSurface:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

.field protected context:Landroid/content/Context;

.field protected exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

.field protected internalListeners:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected playRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    .line 49
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->clearableSurface:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    .line 56
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setup()V

    return-void
.end method


# virtual methods
.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
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

    .line 176
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected initExoPlayer()V
    .locals 2

    .line 212
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    .line 214
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V

    .line 215
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->blockingClearSurface()V

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 198
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 124
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    return-void
.end method

.method public restart()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->restart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 98
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->removeListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 193
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->addListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlaybackSpeed(F)Z

    move-result p1

    return p1
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setSelectedTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 66
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    if-eqz p2, :cond_0

    .line 69
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 70
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setUri(Landroid/net/Uri;)V

    .line 73
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :goto_0
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 104
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setVolume(F)V

    const/4 p1, 0x1

    return p1
.end method

.method protected setup()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->initExoPlayer()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 118
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 119
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->clearableSurface:Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearSurfaceWhenReady(Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->playRequested:Z

    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
