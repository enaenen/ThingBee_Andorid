.class public interface abstract Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;
.super Ljava/lang/Object;
.source "AudioPlayerApi.java"


# virtual methods
.method public abstract getAudioSessionId()I
.end method

.method public abstract getAvailableTracks()Ljava/util/Map;
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
.end method

.method public abstract getBufferedPercent()I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x64L
    .end annotation
.end method

.method public abstract getCurrentPosition()J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getDuration()J
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onMediaPrepared()V
.end method

.method public abstract pause()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract restart()Z
.end method

.method public abstract seekTo(J)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
.end method

.method public abstract setPlaybackSpeed(F)Z
.end method

.method public abstract setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
.end method

.method public abstract setVolume(FF)V
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
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback()V
.end method

.method public abstract trackSelectionAvailable()Z
.end method
