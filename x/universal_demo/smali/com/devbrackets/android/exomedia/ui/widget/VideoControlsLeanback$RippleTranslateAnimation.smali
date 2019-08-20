.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "VideoControlsLeanback.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RippleTranslateAnimation"
.end annotation


# static fields
.field protected static final DURATION:J = 0xfaL


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

.field protected xDelta:I


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;I)V
    .locals 1

    .line 493
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    int-to-float p1, p2

    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, v0, p1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 496
    iput p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->xDelta:I

    const-wide/16 p1, 0xfa

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->setDuration(J)V

    .line 498
    invoke-virtual {p0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 508
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->xDelta:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 509
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
