.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;
.source "NativeSurfaceVideoView.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;
    }
.end annotation


# instance fields
.field protected delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

.field protected touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 152
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 126
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->updateVideoSize(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->pause()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public restart()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->restart()Z

    move-result v0

    return v0
.end method

.method public seekTo(J)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

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

    .line 198
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 269
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 259
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 291
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 301
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 249
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    .line 132
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

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

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

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

    .line 236
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 238
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    .line 239
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->invalidate()V

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

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

    .line 142
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setVideoURI(Landroid/net/Uri;)V

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

    .line 305
    new-instance p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {p2, p1, p0, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    .line 307
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;

    invoke-direct {p2, p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView$HolderCallback;-><init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x1

    .line 309
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setFocusable(Z)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->setFocusableInTouchMode(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestFocus()Z

    const/4 p1, 0x0

    .line 313
    invoke-virtual {p0, p1, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->updateVideoSize(II)Z

    return-void
.end method

.method public start()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->start()V

    .line 84
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestFocus()Z

    return-void
.end method

.method public stopPlayback(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->stopPlayback(Z)V

    return-void
.end method

.method public suspend()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->delegate:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

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

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->updateVideoSize(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeSurfaceVideoView;->requestLayout()V

    :cond_0
    return-void
.end method
