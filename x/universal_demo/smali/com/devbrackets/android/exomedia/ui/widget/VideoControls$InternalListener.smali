.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
.super Ljava/lang/Object;
.source "VideoControls.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListener"
.end annotation


# instance fields
.field protected pausedForSeek:Z

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 714
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    return-void
.end method


# virtual methods
.method public onFastForwardClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNextClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPauseClicked()Z
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->pause()V

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->start()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreviousClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRewindClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSeekEnded(J)Z
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->seekTo(J)V

    .line 778
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    if-eqz p1, :cond_1

    .line 779
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    .line 780
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->start()V

    .line 781
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSeekStarted()Z
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 762
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    .line 763
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->pause()V

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    return v1
.end method
