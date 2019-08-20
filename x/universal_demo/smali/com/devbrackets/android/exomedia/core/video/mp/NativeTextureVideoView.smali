.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.source "NativeTextureVideoView.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

.field protected touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 131
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->updateVideoSize(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->pause()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public restart()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->restart()Z

    move-result v0

    return v0
.end method

.method public seekTo(J)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->seekTo(J)V

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 274
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 296
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 306
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 254
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 284
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    .line 137
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setPlaybackSpeed(F)Z

    move-result p1

    return p1
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 0

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
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

    .line 241
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 243
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestLayout()V

    .line 244
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->invalidate()V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 0
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method protected setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 310
    new-instance p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {p2, p1, p0, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    .line 312
    new-instance p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;

    invoke-direct {p1, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView$TextureVideoViewSurfaceListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;)V

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 p1, 0x1

    .line 314
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setFocusable(Z)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->setFocusableInTouchMode(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestFocus()Z

    const/4 p1, 0x0

    .line 318
    invoke-virtual {p0, p1, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->updateVideoSize(II)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 89
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestFocus()Z

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->stopPlayback(Z)V

    return-void
.end method

.method public suspend()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->suspend()V

    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public videoSizeChanged(II)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->updateVideoSize(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeTextureVideoView;->requestLayout()V

    :cond_0
    return-void
.end method
