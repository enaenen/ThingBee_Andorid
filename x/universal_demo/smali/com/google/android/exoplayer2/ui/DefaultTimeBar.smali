.class public Lcom/google/android/exoplayer2/ui/DefaultTimeBar;
.super Landroid/view/View;
.source "DefaultTimeBar.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar;


# static fields
.field private static final DEFAULT_AD_MARKER_COLOR:I = -0x4d000100

.field private static final DEFAULT_AD_MARKER_WIDTH:I = 0x4

.field private static final DEFAULT_BAR_HEIGHT:I = 0x4

.field private static final DEFAULT_INCREMENT_COUNT:I = 0x14

.field private static final DEFAULT_PLAYED_COLOR:I = -0x1

.field private static final DEFAULT_SCRUBBER_DISABLED_SIZE:I = 0x0

.field private static final DEFAULT_SCRUBBER_DRAGGED_SIZE:I = 0x10

.field private static final DEFAULT_SCRUBBER_ENABLED_SIZE:I = 0xc

.field private static final DEFAULT_TOUCH_TARGET_HEIGHT:I = 0x1a

.field private static final FINE_SCRUB_RATIO:I = 0x3

.field private static final FINE_SCRUB_Y_THRESHOLD:I = -0x32

.field private static final STOP_SCRUBBING_TIMEOUT_MS:J = 0x3e8L


# instance fields
.field private adBreakCount:I

.field private adBreakTimesMs:[J

.field private final adMarkerPaint:Landroid/graphics/Paint;

.field private final adMarkerWidth:I

.field private final barHeight:I

.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPosition:J

.field private duration:J

.field private final fineScrubYThreshold:I

.field private final formatBuilder:Ljava/lang/StringBuilder;

.field private final formatter:Ljava/util/Formatter;

.field private keyCountIncrement:I

.field private keyTimeIncrement:J

.field private lastCoarseScrubXPosition:I

.field private listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

.field private locationOnScreen:[I

.field private final playedPaint:Landroid/graphics/Paint;

.field private position:J

.field private final progressBar:Landroid/graphics/Rect;

.field private scrubPosition:J

.field private final scrubberBar:Landroid/graphics/Rect;

.field private final scrubberDisabledSize:I

.field private final scrubberDraggedSize:I

.field private final scrubberEnabledSize:I

.field private final scrubberPadding:I

.field private final scrubberPaint:Landroid/graphics/Paint;

.field private scrubbing:Z

.field private final seekBounds:Landroid/graphics/Rect;

.field private final stopScrubbingRunnable:Ljava/lang/Runnable;

.field private touchPosition:Landroid/graphics/Point;

.field private final touchTargetHeight:I

.field private final unplayedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, -0x32

    .line 125
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    const/4 v1, 0x4

    .line 126
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v2

    const/16 v3, 0x1a

    .line 127
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v3

    .line 128
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v1

    const/16 v4, 0xc

    .line 129
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v4

    const/4 v5, 0x0

    .line 130
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v6

    const/16 v7, 0x10

    .line 131
    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v0

    const v8, -0x4d000100

    const/4 v9, -0x1

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v10, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar:[I

    invoke-virtual {p1, p2, v10, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 136
    :try_start_0
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_bar_height:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 138
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_touch_target_height:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 140
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_width:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 142
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_enabled_size:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 144
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_disabled_size:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 146
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_dragged_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 148
    sget p2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_played_color:I

    invoke-virtual {p1, p2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 149
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_scrubber_color:I

    .line 150
    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDefaultScrubberColor(I)I

    move-result v1

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 151
    sget v1, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_buffered_color:I

    .line 152
    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDefaultBufferedColor(I)I

    move-result v2

    .line 151
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 153
    sget v2, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_unplayed_color:I

    .line 154
    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDefaultUnplayedColor(I)I

    move-result v3

    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 155
    sget v3, Lcom/google/android/exoplayer2/ui/R$styleable;->DefaultTimeBar_ad_marker_color:I

    invoke-virtual {p1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 157
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 166
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    .line 167
    iput v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 168
    iput v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    .line 169
    iput v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    .line 170
    iput v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    .line 171
    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 172
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDefaultScrubberColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDefaultBufferedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getDefaultUnplayedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    .line 179
    new-instance p1, Ljava/util/Formatter;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    .line 180
    new-instance p1, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar$1;-><init>(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    .line 186
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    iget p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 187
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 189
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 190
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    const/16 p1, 0x14

    .line 191
    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 192
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setFocusable(Z)V

    .line 193
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt p1, v7, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->maybeSetImportantForAccessibilityV16()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/DefaultTimeBar;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return-void
.end method

.method private static dpToPx(Landroid/util/DisplayMetrics;I)I
    .locals 0

    int-to-float p1, p1

    .line 577
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private drawPlayhead(Landroid/graphics/Canvas;)V
    .locals 5

    .line 531
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 534
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberEnabledSize:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDisabledSize:I

    goto :goto_1

    .line 534
    :cond_3
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberDraggedSize:I

    .line 536
    :goto_1
    div-int/lit8 v0, v0, 0x2

    .line 537
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v1

    int-to-float v1, v1

    .line 539
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTimeBar(Landroid/graphics/Canvas;)V
    .locals 13

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 502
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 503
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 506
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 507
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 508
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 509
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_1

    int-to-float v7, v4

    int-to-float v8, v1

    .line 510
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v9, v4

    int-to-float v10, v0

    iget-object v11, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->unplayedPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 512
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v3, v2, :cond_2

    int-to-float v5, v2

    int-to-float v6, v1

    int-to-float v7, v3

    int-to-float v8, v0

    .line 514
    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v2

    int-to-float v5, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->playedPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 519
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 520
    :goto_0
    iget v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakCount:I

    if-ge v4, v5, :cond_4

    .line 521
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakTimesMs:[J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v5

    .line 522
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    .line 523
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-long v7, v7

    mul-long v7, v7, v5

    iget-wide v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v7, v5

    long-to-int v5, v7

    sub-int/2addr v5, v2

    .line 524
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    sub-int/2addr v7, v8

    .line 525
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 524
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v6, v5

    int-to-float v8, v6

    int-to-float v9, v1

    .line 526
    iget v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerWidth:I

    add-int/2addr v6, v5

    int-to-float v10, v6

    int-to-float v11, v0

    iget-object v12, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adMarkerPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static getDefaultBufferedColor(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x34000000    # -3.3554432E7f

    or-int/2addr p0, v0

    return p0
.end method

.method private static getDefaultScrubberColor(I)I
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method private static getDefaultUnplayedColor(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    or-int/2addr p0, v0

    return p0
.end method

.method private getPositionIncrement()J
    .locals 5

    .line 547
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    iget v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    :goto_0
    return-wide v0
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->formatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrubberPosition()J
    .locals 5

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private isInSeekBar(FF)Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private maybeSetImportantForAccessibilityV16()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 427
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method private positionScrubber(F)V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    float-to-int p1, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 477
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    .line 478
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getLocationOnScreen([I)V

    .line 481
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->locationOnScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr p1, v2

    .line 481
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 484
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchPosition:Landroid/graphics/Point;

    return-object p1
.end method

.method private scrubIncrementally(J)Z
    .locals 9

    .line 558
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-gtz v4, :cond_0

    return v0

    .line 561
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v1

    add-long v3, v1, p1

    const-wide/16 v5, 0x0

    .line 562
    iget-wide v7, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 563
    iget-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    return v0

    .line 566
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-nez p1, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing()V

    .line 569
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz p1, :cond_3

    .line 570
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    .line 572
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    const/4 p1, 0x1

    return p1
.end method

.method private startScrubbing()V
    .locals 3

    const/4 v0, 0x1

    .line 433
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 434
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    :cond_1
    return-void
.end method

.method private stopScrubbing(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 447
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V

    :cond_1
    return-void
.end method

.method private update()V
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 458
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 459
    :goto_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 460
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 461
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 462
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 463
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 468
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawTimeBar(Landroid/graphics/Canvas;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->drawPlayhead(Landroid/graphics/Canvas;)V

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 374
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 375
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 376
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_0
    const-class v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 384
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 385
    const-class v0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 387
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 390
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 391
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 392
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    .line 393
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v0, 0x1000

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 315
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-long v0, v0

    .line 322
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 324
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 330
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_1

    .line 331
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 332
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbingRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v3

    .line 340
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 356
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 357
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingLeft()I

    move-result p1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 359
    iget p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    iget p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p5

    .line 360
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    add-int/2addr v0, p5

    invoke-virtual {p3, p1, p5, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    iget p4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->seekBounds:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget p5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubberPadding:I

    sub-int/2addr p4, p5

    iget p5, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->barHeight:I

    add-int/2addr p5, p2

    invoke-virtual {p1, p3, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 363
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 345
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 346
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_0

    .line 347
    iget p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->touchTargetHeight:I

    .line 348
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 349
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 265
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->resolveRelativeTouchPosition(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 269
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 270
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 283
    :pswitch_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz p1, :cond_4

    .line 284
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->fineScrubYThreshold:I

    if-ge v0, p1, :cond_1

    .line 285
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    sub-int/2addr v2, p1

    .line 286
    iget p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    div-int/2addr v2, v4

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    goto :goto_0

    .line 288
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->lastCoarseScrubXPosition:I

    int-to-float p1, v2

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 291
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 292
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    if-eqz p1, :cond_2

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;->onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    return v5

    .line 302
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_4

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    return v5

    :pswitch_2
    int-to-float p1, v2

    int-to-float v0, v0

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->isInSeekBar(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->startScrubbing()V

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->positionScrubber(F)V

    .line 276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getScrubberPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubPosition:J

    .line 277
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    .line 278
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->invalidate()V

    return v5

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 402
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 405
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    const/4 v1, 0x0

    if-gtz p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x2000

    if-ne p1, p2, :cond_2

    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide p1

    neg-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 410
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x1000

    if-ne p1, p2, :cond_4

    .line 413
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getPositionIncrement()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubIncrementally(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 414
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 419
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->sendAccessibilityEvent(I)V

    return v0

    :cond_4
    return v1
.end method

.method public setAdBreakTimesMs([JI)V
    .locals 1
    .param p1    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 241
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 242
    iput p2, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakCount:I

    .line 243
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->adBreakTimesMs:[J

    .line 244
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->bufferedPosition:J

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .line 232
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->duration:J

    .line 233
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 249
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 250
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->scrubbing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->stopScrubbing(Z)V

    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 213
    iput p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 214
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v0, -0x1

    .line 206
    iput v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyCountIncrement:I

    .line 207
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->keyTimeIncrement:J

    return-void
.end method

.method public setListener(Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->listener:Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .line 219
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->position:J

    .line 220
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->getProgressText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->update()V

    return-void
.end method
