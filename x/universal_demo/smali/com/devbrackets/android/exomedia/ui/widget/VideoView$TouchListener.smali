.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchListener"
.end annotation


# instance fields
.field protected gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;Landroid/content/Context;)V
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 941
    new-instance p1, Landroid/view/GestureDetector;

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 953
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 954
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hide()V

    goto :goto_0

    .line 956
    :cond_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->showControls()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 946
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
