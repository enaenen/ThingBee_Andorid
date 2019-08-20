.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;
.super Ljava/lang/Object;
.source "VideoControlsLeanback.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoteKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 407
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x55

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 457
    :pswitch_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 458
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->pause()V

    return v0

    .line 450
    :pswitch_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    .line 451
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->start()V

    return v0

    .line 476
    :pswitch_2
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onFastForwardClick()V

    return v0

    .line 472
    :pswitch_3
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onRewindClick()V

    return v0

    .line 468
    :pswitch_4
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onPreviousClick()V

    return v0

    .line 464
    :pswitch_5
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onNextClick()V

    return v0

    .line 441
    :pswitch_6
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    .line 442
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return v0

    .line 436
    :pswitch_7
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    .line 437
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->focusNext(Landroid/view/View;)V

    return v0

    .line 431
    :pswitch_8
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    .line 432
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p2, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->focusPrevious(Landroid/view/View;)V

    return v0

    .line 427
    :pswitch_9
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hide()V

    return v0

    .line 423
    :pswitch_a
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    return v0

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onPlayPauseClick()V

    return v0

    .line 413
    :cond_2
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isVisible:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->canViewHide:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isLoading:Z

    if-nez p1, :cond_3

    .line 414
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hide()V

    return v0

    .line 416
    :cond_3
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->controlsParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x57
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
