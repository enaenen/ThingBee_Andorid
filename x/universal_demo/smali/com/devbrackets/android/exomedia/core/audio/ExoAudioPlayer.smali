.class public Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;
.super Ljava/lang/Object;
.source "ExoAudioPlayer.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected internalListeners:Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected playRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->internalListeners:Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    .line 60
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    .line 63
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->internalListeners:Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V

    .line 64
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->internalListeners:Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer$InternalListeners;

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

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

    .line 217
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public onMediaPrepared()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 130
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->prepare()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public restart()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->restart()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 151
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

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

    .line 112
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedPrepared(Z)V

    .line 76
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    if-eqz p2, :cond_0

    .line 79
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 80
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 82
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setUri(Landroid/net/Uri;)V

    .line 83
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :goto_0
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->removeListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 227
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->addListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlaybackSpeed(F)Z

    move-result p1

    return p1
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setSelectedTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 107
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setVolume(F)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    .line 123
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    .line 124
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->exoMediaPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->stop()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;->playRequested:Z

    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
