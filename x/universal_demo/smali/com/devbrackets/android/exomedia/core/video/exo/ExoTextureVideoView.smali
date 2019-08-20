.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.source "ExoTextureVideoView.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->setup()V

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

    .line 156
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->updateVideoSize(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->pause()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->release()V

    return-void
.end method

.method public restart()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->restart()Z

    move-result v0

    return v0
.end method

.method public seekTo(J)V
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 95
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->seekTo(J)V

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setPlaybackSpeed(F)Z

    move-result p1

    return p1
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

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

    .line 90
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->setVolume(F)Z

    move-result p1

    return p1
.end method

.method protected setup()V
    .locals 2

    .line 177
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    .line 179
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView$ExoMediaVideoSurfaceTextureListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;)V

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0, v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->updateVideoSize(II)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->start()V

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->stopPlayback(Z)V

    return-void
.end method

.method public suspend()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->suspend()V

    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->trackSelectionAvailable()Z

    move-result v0

    return v0
.end method
