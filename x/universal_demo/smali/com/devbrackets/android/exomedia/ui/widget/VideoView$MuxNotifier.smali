.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;
.super Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MuxNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

.field public videoSizeChangedListener:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;-><init>()V

    return-void
.end method


# virtual methods
.method public onExoPlayerError(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 886
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->stopPlayback()V

    if-eqz p1, :cond_0

    .line 889
    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->forcePrepare()V

    :cond_0
    return-void
.end method

.method public onMediaPlaybackEnded()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 896
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->onPlaybackEnded()V

    return-void
.end method

.method public onPrepared()V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setDuration(J)V

    .line 922
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->finishLoading()V

    :cond_0
    return-void
.end method

.method public onPreviewImageStateChanged(Z)V
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->finishLoading()V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .line 910
    iget-object p4, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object p4, p4, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    const/4 v0, 0x0

    invoke-interface {p4, p3, v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoRotation(IZ)V

    .line 911
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object p3, p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {p3, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->onVideoSizeChanged(II)V

    .line 913
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->videoSizeChangedListener:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;

    if-eqz p3, :cond_0

    .line 914
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->videoSizeChangedListener:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;

    invoke-interface {p3, p1, p2}, Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public shouldNotifyCompletion(J)Z
    .locals 4

    .line 881
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v0

    add-long v2, v0, p1

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
