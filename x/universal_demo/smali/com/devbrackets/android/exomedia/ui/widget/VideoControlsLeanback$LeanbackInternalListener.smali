.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
.source "VideoControlsLeanback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LeanbackInternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    return-void
.end method


# virtual methods
.method public onFastForwardClicked()Z
    .locals 6

    .line 521
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long v4, v0, v2

    .line 526
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 527
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v4, v0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0, v4, v5}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->performSeek(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRewindClicked()Z
    .locals 6

    .line 536
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v4

    .line 545
    :goto_0
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v2, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->performSeek(J)V

    const/4 v0, 0x1

    return v0
.end method
