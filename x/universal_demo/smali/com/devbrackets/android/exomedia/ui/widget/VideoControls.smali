.class public abstract Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.super Landroid/widget/RelativeLayout;
.source "VideoControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    }
.end annotation


# static fields
.field protected static final CONTROL_VISIBILITY_ANIMATION_LENGTH:J = 0x12cL

.field public static final DEFAULT_CONTROL_HIDE_DELAY:I = 0x7d0


# instance fields
.field protected buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected canViewHide:Z

.field protected controlsContainer:Landroid/view/ViewGroup;

.field protected currentTimeTextView:Landroid/widget/TextView;

.field protected descriptionTextView:Landroid/widget/TextView;

.field protected enabledViews:Landroid/util/SparseBooleanArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected endTimeTextView:Landroid/widget/TextView;

.field protected hideDelay:J

.field protected hideEmptyTextContainer:Z

.field protected internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected isLoading:Z

.field protected isVisible:Z

.field protected loadingProgressBar:Landroid/widget/ProgressBar;

.field protected nextButton:Landroid/widget/ImageButton;

.field protected pauseDrawable:Landroid/graphics/drawable/Drawable;

.field protected playDrawable:Landroid/graphics/drawable/Drawable;

.field protected playPauseButton:Landroid/widget/ImageButton;

.field protected previousButton:Landroid/widget/ImageButton;

.field protected progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected subTitleTextView:Landroid/widget/TextView;

.field protected textContainer:Landroid/view/ViewGroup;

.field protected titleTextView:Landroid/widget/TextView;

.field protected videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected visibilityHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 90
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 93
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->enabledViews:Landroid/util/SparseBooleanArray;

    const-wide/16 v0, 0x7d0

    .line 96
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 100
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 101
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 162
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 77
    new-instance p2, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {p2}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 90
    new-instance p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {p2, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 93
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->enabledViews:Landroid/util/SparseBooleanArray;

    const-wide/16 v0, 0x7d0

    .line 96
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    const/4 p2, 0x1

    .line 99
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 100
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 101
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 167
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 77
    new-instance p2, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {p2}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 90
    new-instance p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {p2, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 93
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->enabledViews:Landroid/util/SparseBooleanArray;

    const-wide/16 p2, 0x7d0

    .line 96
    iput-wide p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    const/4 p2, 0x1

    .line 99
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 100
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 101
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 172
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 77
    new-instance p2, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {p2}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 90
    new-instance p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {p2, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 93
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->enabledViews:Landroid/util/SparseBooleanArray;

    const-wide/16 p2, 0x7d0

    .line 96
    iput-wide p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    const/4 p2, 0x0

    .line 98
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    const/4 p2, 0x1

    .line 99
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 100
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 101
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addExtraView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract animateVisibility(Z)V
.end method

.method public abstract finishLoading()V
.end method

.method public getExtraViews()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected abstract getLayoutResource()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public hide()V
    .locals 2

    .line 477
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->clearAnimation()V

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->animateVisibility(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public hideDelayed()V
    .locals 2

    .line 493
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed(J)V

    return-void
.end method

.method public hideDelayed(J)V
    .locals 3

    .line 503
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 505
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$2;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected isTextContainerEmpty()Z
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    return v1

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 186
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$1;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->setRepeatListener(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    .line 193
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 194
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 202
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->stop()V

    .line 203
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->setRepeatListener(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    return-void
.end method

.method protected onNextClick()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onNextClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onNextClicked()Z

    :cond_1
    return-void
.end method

.method protected onPlayPauseClick()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onPlayPauseClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onPlayPauseClicked()Z

    :cond_1
    return-void
.end method

.method protected onPreviousClick()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onPreviousClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onPreviousClicked()Z

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged()V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    if-nez v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;->onControlsShown()V

    goto :goto_0

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;->onControlsHidden()V

    :goto_0
    return-void
.end method

.method protected registerListeners()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$3;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$3;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$4;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$4;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public removeExtraView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected retrieveViews()V
    .locals 1

    .line 560
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_current_time:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->currentTimeTextView:Landroid/widget/TextView;

    .line 561
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_end_time:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->endTimeTextView:Landroid/widget/TextView;

    .line 563
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_title:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleTextView:Landroid/widget/TextView;

    .line 564
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_sub_title:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleTextView:Landroid/widget/TextView;

    .line 565
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_description:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionTextView:Landroid/widget/TextView;

    .line 567
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_play_pause_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    .line 568
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_previous_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    .line 569
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_next_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    .line 571
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_video_loading:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 573
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_interactive_container:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->controlsContainer:Landroid/view/ViewGroup;

    .line 574
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_text_container:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->textContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    return-void
.end method

.method public setCanHide(Z)V
    .locals 0

    .line 533
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 289
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    return-void
.end method

.method public abstract setDuration(J)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public setFastForwardButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFastForwardButtonRemoved(Z)V
    .locals 0

    return-void
.end method

.method public setFastForwardDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setHideDelay(J)V
    .locals 0

    .line 524
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    return-void
.end method

.method public setHideEmptyTextContainer(Z)V
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 544
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    return-void
.end method

.method public setNextButtonEnabled(Z)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 378
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->enabledViews:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_next_btn:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setNextButtonRemoved(Z)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setNextDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPlayPauseDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playDrawable:Landroid/graphics/drawable/Drawable;

    .line 301
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlayPauseImage(Z)V

    return-void
.end method

.method public abstract setPosition(J)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public setPreviousButtonEnabled(Z)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 363
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->enabledViews:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_previous_btn:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public setPreviousButtonRemoved(Z)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setPreviousDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRewindButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setRewindButtonRemoved(Z)V
    .locals 0

    return-void
.end method

.method public setRewindDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setSeekListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 277
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 266
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    return-void
.end method

.method public setVideoView(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 213
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    return-void
.end method

.method public setVisibilityListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 240
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    return-void
.end method

.method protected setup(Landroid/content/Context;)V
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getLayoutResource()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 656
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->retrieveViews()V

    .line 658
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->registerListeners()V

    .line 659
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateButtonDrawables()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->clearAnimation()V

    const/4 v0, 0x1

    .line 470
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->animateVisibility(Z)V

    return-void
.end method

.method public abstract showLoading(Z)V
.end method

.method protected updateButtonDrawables()V
    .locals 3

    .line 606
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_play_arrow_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/ResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playDrawable:Landroid/graphics/drawable/Drawable;

    .line 607
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_pause_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/ResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 608
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_skip_previous_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/ResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 611
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_skip_next_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/ResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updatePlayPauseImage(Z)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updatePlaybackState(Z)V
    .locals 1

    .line 250
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlayPauseImage(Z)V

    .line 251
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->start()V

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed()V

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    :goto_0
    return-void
.end method

.method protected updateProgress()V
    .locals 7

    .line 704
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide v4

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getBufferPercentage()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateProgress(JJI)V

    :cond_0
    return-void
.end method

.method public abstract updateProgress(JJI)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
.end method

.method protected abstract updateTextContainerVisibility()V
.end method
