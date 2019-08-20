.class public Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.super Landroid/widget/FrameLayout;
.source "PlaybackControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;,
        Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:J = 0xbb8L

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private adBreakTimesMs:[J

.field private final componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

.field private controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

.field private final durationView:Landroid/widget/TextView;

.field private final fastForwardButton:Landroid/view/View;

.field private fastForwardMs:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private final hideAction:Ljava/lang/Runnable;

.field private hideAtMs:J

.field private isAttachedToWindow:Z

.field private multiWindowTimeBar:Z

.field private final nextButton:Landroid/view/View;

.field private final pauseButton:Landroid/view/View;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private final playButton:Landroid/view/View;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private final positionView:Landroid/widget/TextView;

.field private final previousButton:Landroid/view/View;

.field private final rewindButton:Landroid/view/View;

.field private rewindMs:I

.field private scrubbing:Z

.field private showMultiWindowTimeBar:Z

.field private showTimeoutMs:I

.field private final timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

.field private final updateProgressAction:Ljava/lang/Runnable;

.field private visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 277
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$2;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    .line 261
    new-instance p3, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$3;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    .line 279
    sget p3, Lcom/google/android/exoplayer2/ui/R$layout;->exo_playback_control_view:I

    const/16 v0, 0x1388

    .line 280
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    const/16 v1, 0x3a98

    .line 281
    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 282
    iput v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 287
    :try_start_0
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_rewind_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 288
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_fastforward_increment:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 290
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_show_timeout:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    .line 291
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->PlaybackControlView_controller_layout_id:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 297
    :cond_0
    :goto_0
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 298
    new-instance p2, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    .line 300
    new-instance p2, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    .line 301
    new-array p2, v0, [J

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    .line 302
    new-instance p2, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    .line 303
    sget-object p2, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    .line 305
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p1, 0x40000

    .line 306
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setDescendantFocusability(I)V

    .line 308
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    .line 309
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    .line 310
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/TimeBar;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    .line 311
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ui/TimeBar;->setListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V

    .line 314
    :cond_1
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_play:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    .line 315
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 316
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    :cond_2
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    .line 319
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 320
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_3
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    .line 323
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 324
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_4
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    .line 327
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 328
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_5
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    .line 331
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 332
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_6
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    .line 335
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 336
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/Runnable;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/view/View;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ui/PlaybackControlView;Z)Z
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Landroid/widget/TextView;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Ljava/util/Formatter;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/ui/PlaybackControlView;J)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekToTimebarPosition(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ui/PlaybackControlView;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method

.method private static canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)Z
    .locals 8

    .line 861
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 866
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 867
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-nez v3, :cond_1

    iget-wide v3, p1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private fastForward()V
    .locals 6

    .line 712
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-gtz v0, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    return-void
.end method

.method private hideAfterTimeout()V
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 484
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    if-lez v0, :cond_0

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    .line 486
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 490
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private static isHandledMediaKey(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private next()V
    .locals 6

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 697
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 698
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    .line 699
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_2

    .line 700
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private previous()V
    .locals 6

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    .line 682
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    if-lez v1, :cond_2

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 685
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 687
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    :goto_0
    return-void
.end method

.method private requestPlayPauseFocus()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 651
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_1
    return-void
.end method

.method private rewind()V
    .locals 6

    .line 705
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-gtz v0, :cond_0

    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    int-to-long v2, v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    return-void
.end method

.method private seekTo(IJ)V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSeekTo(Lcom/google/android/exoplayer2/ExoPlayer;IJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 727
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    return-void
.end method

.method private seekToTimebarPosition(J)V
    .locals 10

    .line 732
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v0, :cond_6

    .line 733
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 737
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 738
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v3, v4, :cond_5

    .line 739
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-nez v4, :cond_4

    .line 740
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationMs()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 743
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 745
    :cond_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, v6, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v3, v6, :cond_1

    .line 746
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline$Window;->getPositionInFirstPeriodMs()J

    move-result-wide v6

    sub-long v8, v4, v6

    move-wide v4, v8

    :cond_1
    add-int/lit8 v6, v1, -0x1

    if-ne v2, v6, :cond_2

    .line 748
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v6, v6, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, v6, :cond_2

    cmp-long v6, p1, v4

    if-ltz v6, :cond_2

    .line 751
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide p1

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    return-void

    :cond_2
    cmp-long v6, p1, v4

    if-gez v6, :cond_3

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    add-long v3, v0, p1

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(IJ)V

    return-void

    :cond_3
    const/4 v6, 0x0

    sub-long v6, p1, v4

    move-wide p1, v6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->seekTo(J)V

    :cond_7
    return-void
.end method

.method private setButtonEnabled(ZLandroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 662
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 663
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 664
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setViewAlphaV11(Landroid/view/View;F)V

    .line 665
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    .line 667
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private setViewAlphaV11(Landroid/view/View;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 673
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateAll()V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updatePlayPauseButton()V

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgress()V

    return-void
.end method

.method private updateNavigation()V
    .locals 8

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    .line 529
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentWindowIndex()I

    move-result v3

    .line 530
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 531
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-gtz v3, :cond_4

    if-nez v4, :cond_4

    .line 532
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    .line 533
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    sub-int/2addr v6, v1

    if-lt v3, v6, :cond_6

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x1

    .line 534
    :goto_5
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-eqz v0, :cond_8

    .line 536
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 539
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previousButton:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->nextButton:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 541
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    if-lez v0, :cond_9

    if-eqz v4, :cond_9

    const/4 v0, 0x1

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardButton:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 542
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    if-lez v0, :cond_a

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindButton:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setButtonEnabled(ZLandroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v0, :cond_b

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/ui/TimeBar;->setEnabled(Z)V

    :cond_b
    return-void

    :cond_c
    :goto_9
    return-void
.end method

.method private updatePlayPauseButton()V
    .locals 7

    .line 501
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 506
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    .line 507
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v3, v2

    .line 508
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->playButton:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v6, 0x8

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 510
    :goto_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-eqz v5, :cond_7

    if-nez v0, :cond_5

    .line 511
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v3, v1

    .line 512
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->pauseButton:Landroid/view/View;

    if-nez v0, :cond_6

    const/16 v2, 0x8

    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v3, :cond_8

    .line 515
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    :cond_8
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.method private updateProgress()V
    .locals 21

    move-object/from16 v0, p0

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    if-nez v1, :cond_0

    goto/16 :goto_b

    .line 564
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_d

    .line 565
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    if-eqz v1, :cond_c

    .line 566
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v5

    .line 568
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v6

    move-wide v8, v2

    move-wide v10, v8

    move-wide v12, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v2, v5, :cond_a

    .line 576
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 577
    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v7, v7, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    :goto_1
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-gt v7, v4, :cond_9

    .line 578
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v7, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v4

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/Timeline$Period;->isAd:Z

    if-eqz v4, :cond_4

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v3, v4

    if-nez v15, :cond_8

    .line 582
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    array-length v4, v4

    if-ne v14, v4, :cond_3

    .line 583
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    array-length v15, v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x2

    :goto_3
    invoke-static {v4, v15}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    .line 586
    :cond_3
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    add-int/lit8 v15, v14, 0x1

    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v16

    aput-wide v16, v4, v14

    move v14, v15

    const/4 v15, 0x1

    goto :goto_6

    .line 590
    :cond_4
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v16

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v16, v18

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 591
    :goto_4
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 593
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget v4, v4, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    if-ne v7, v4, :cond_6

    .line 594
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move/from16 v20, v3

    iget-wide v3, v4, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    sub-long v18, v16, v3

    move-wide/from16 v16, v18

    goto :goto_5

    :cond_6
    move/from16 v20, v3

    :goto_5
    if-ge v2, v6, :cond_7

    add-long v3, v8, v16

    add-long v8, v10, v16

    move-wide v10, v8

    move-wide v8, v3

    :cond_7
    const/4 v3, 0x0

    add-long v3, v12, v16

    move-wide v12, v3

    move/from16 v3, v20

    const/4 v15, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    move/from16 v20, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 604
    :cond_a
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    .line 605
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v4

    .line 606
    invoke-static {v12, v13}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v6

    if-nez v3, :cond_b

    .line 608
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    add-long v10, v1, v8

    .line 609
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v1

    add-long v8, v4, v1

    move-wide v4, v8

    move-wide v2, v10

    goto :goto_7

    :cond_b
    move-wide v2, v1

    .line 611
    :goto_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_e

    .line 612
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->adBreakTimesMs:[J

    invoke-interface {v1, v8, v14}, Lcom/google/android/exoplayer2/ui/TimeBar;->setAdBreakTimesMs([JI)V

    goto :goto_8

    .line 615
    :cond_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 616
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v4

    .line 617
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v6

    goto :goto_8

    :cond_d
    move-wide v4, v2

    move-wide v6, v4

    .line 620
    :cond_e
    :goto_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    .line 621
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->durationView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v8, v9, v6, v7}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->scrubbing:Z

    if-nez v1, :cond_10

    .line 624
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->positionView:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->formatter:Ljava/util/Formatter;

    invoke-static {v8, v9, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :cond_10
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    if-eqz v1, :cond_11

    .line 627
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ui/TimeBar;->setPosition(J)V

    .line 628
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer2/ui/TimeBar;->setBufferedPosition(J)V

    .line 629
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->timeBar:Lcom/google/android/exoplayer2/ui/TimeBar;

    invoke-interface {v1, v6, v7}, Lcom/google/android/exoplayer2/ui/TimeBar;->setDuration(J)V

    .line 633
    :cond_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 634
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v1, :cond_12

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_9

    :cond_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v4

    const/4 v1, 0x1

    :goto_9
    if-eq v4, v1, :cond_15

    const/4 v1, 0x4

    if-eq v4, v1, :cond_15

    .line 637
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v1

    const-wide/16 v5, 0x3e8

    if-eqz v1, :cond_14

    const/4 v1, 0x3

    if-ne v4, v1, :cond_14

    .line 638
    rem-long/2addr v2, v5

    sub-long v7, v5, v2

    const-wide/16 v1, 0xc8

    cmp-long v3, v7, v1

    if-gez v3, :cond_13

    add-long v1, v7, v5

    goto :goto_a

    :cond_13
    move-wide v1, v7

    goto :goto_a

    :cond_14
    move-wide v1, v5

    .line 645
    :goto_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    return-void

    :cond_16
    :goto_b
    return-void
.end method

.method private updateTimeBarMode()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 553
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->canShowMultiWindowTimeBar(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->multiWindowTimeBar:Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 792
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 794
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    :cond_2
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 807
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isHandledMediaKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/16 p1, 0x55

    if-eq v0, p1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 826
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_0

    .line 823
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    goto :goto_0

    .line 814
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForward()V

    goto :goto_0

    .line 817
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewind()V

    goto :goto_0

    .line 832
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->previous()V

    goto :goto_0

    .line 829
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->next()V

    goto :goto_0

    .line 820
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;->dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z

    .line 838
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->show()V

    return v1

    :cond_3
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return v0
.end method

.method public hide()V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 465
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 471
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 769
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 770
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 771
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 772
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAtMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-gtz v2, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hide()V

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 779
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 784
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 785
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isAttachedToWindow:Z

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 787
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;)V
    .locals 0

    if-nez p1, :cond_0

    .line 395
    sget-object p1, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->DEFAULT_CONTROL_DISPATCHER:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->controlDispatcher:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 417
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->fastForwardMs:I

    .line 418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-ne v0, p1, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->componentListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$ComponentListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->rewindMs:I

    .line 407
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateNavigation()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showMultiWindowTimeBar:Z

    .line 376
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateTimeBarMode()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 440
    iput p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->showTimeoutMs:I

    return-void
.end method

.method public setVisibilityListener(Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->visibilityListener:Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/PlaybackControlView$VisibilityListener;->onVisibilityChange(I)V

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->updateAll()V

    .line 454
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->requestPlayPauseFocus()V

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/PlaybackControlView;->hideAfterTimeout()V

    return-void
.end method
