.class public interface abstract Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;
.super Ljava/lang/Object;
.source "VideoViewApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/api/VideoViewApi$OnSurfaceSizeChanged;
    }
.end annotation


# virtual methods
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

.method public abstract getHeight()I
.end method

.method public abstract getScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
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

.method public abstract setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
.end method

.method public abstract setMeasureBasedOnAspectRatioEnabled(Z)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setPlaybackSpeed(F)Z
.end method

.method public abstract setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
.end method

.method public abstract setVideoRotation(IZ)V
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
.end method

.method public abstract setVideoUri(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVolume(F)Z
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback(Z)V
.end method

.method public abstract suspend()V
.end method

.method public abstract trackSelectionAvailable()Z
.end method
