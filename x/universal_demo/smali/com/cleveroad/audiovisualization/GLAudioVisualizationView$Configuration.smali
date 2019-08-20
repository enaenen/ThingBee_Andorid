.class Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Configuration"
.end annotation


# instance fields
.field backgroundColor:[F

.field bubbleSize:F

.field bubblesPerLayer:I

.field footerHeight:F

.field layerColors:[[F

.field layersCount:I

.field randomizeBubbleSize:Z

.field waveHeight:F

.field wavesCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 132
    :try_start_0
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_layersCount:I

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    .line 133
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/cleveroad/audiovisualization/Utils;->between(III)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    .line 134
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_wavesCount:I

    const/4 v1, 0x7

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    .line 135
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    const/16 v1, 0x10

    invoke-static {v0, v2, v1}, Lcom/cleveroad/audiovisualization/Utils;->between(III)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    .line 136
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_wavesHeight:I

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    .line 137
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    const/high16 v1, 0x44f00000    # 1920.0f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v3, v1}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    .line 138
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_bubblesSize:I

    const/16 v1, 0x14

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 139
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v3, v1}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 140
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_bubblesRandomizeSizes:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->randomizeBubbleSize:Z

    .line 141
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_wavesFooterHeight:I

    const/16 v3, 0x280

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    .line 142
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x44870000    # 1080.0f

    invoke-static {v0, v3, v4}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    .line 143
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_bubblesPerLayer:I

    const/16 v3, 0x8

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubblesPerLayer:I

    .line 144
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubblesPerLayer:I

    const/16 v3, 0x24

    invoke-static {v0, v2, v3}, Lcom/cleveroad/audiovisualization/Utils;->between(III)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubblesPerLayer:I

    .line 145
    sget v0, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_backgroundColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget v0, Lcom/cleveroad/audiovisualization/R$color;->av_color_bg:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 149
    :cond_0
    sget v2, Lcom/cleveroad/audiovisualization/R$styleable;->GLAudioVisualizationView_av_wavesColors:I

    sget v3, Lcom/cleveroad/audiovisualization/R$array;->av_colors:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz p3, :cond_1

    .line 151
    iget p3, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    new-array p3, p3, [I

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 154
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 155
    :goto_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 156
    invoke-virtual {p3, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, v2

    .line 161
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    array-length p2, p3

    iget v2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    if-ge p2, v2, :cond_3

    .line 164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You specified more layers than colors."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_3
    array-length p2, p3

    new-array p2, p2, [[F

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layerColors:[[F

    .line 168
    :goto_2
    array-length p2, p3

    if-ge v1, p2, :cond_4

    .line 169
    iget-object p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layerColors:[[F

    aget v2, p3, v1

    invoke-static {v2}, Lcom/cleveroad/audiovisualization/Utils;->convertColor(I)[F

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_4
    invoke-static {v0}, Lcom/cleveroad/audiovisualization/Utils;->convertColor(I)[F

    move-result-object p2

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->backgroundColor:[F

    .line 172
    iget p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    return-void

    :catchall_0
    move-exception p1

    .line 161
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)V
    .locals 4
    .param p1    # Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$300(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    .line 177
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x44f00000    # 1920.0f

    invoke-static {v0, v1, v2}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    .line 178
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$400(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    .line 179
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-static {v0, v2, v3}, Lcom/cleveroad/audiovisualization/Utils;->between(III)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->wavesCount:I

    .line 180
    invoke-virtual {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->layerColors()[[F

    move-result-object v0

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layerColors:[[F

    .line 181
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$500(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 182
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v0, v1, v3}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 183
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$000(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubbleSize:F

    .line 184
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$600(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    .line 185
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v3, 0x44870000    # 1080.0f

    invoke-static {v0, v1, v3}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    .line 186
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$700(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->randomizeBubbleSize:Z

    .line 187
    invoke-virtual {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->backgroundColor()[F

    move-result-object v0

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->backgroundColor:[F

    .line 188
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$800(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    .line 189
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$900(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I

    move-result p1

    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubblesPerLayer:I

    .line 190
    iget p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->bubblesPerLayer:I

    const/16 v0, 0x24

    invoke-static {p1, v2, v0}, Lcom/cleveroad/audiovisualization/Utils;->between(III)I

    .line 191
    iget p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    const/4 v0, 0x4

    invoke-static {p1, v2, v0}, Lcom/cleveroad/audiovisualization/Utils;->between(III)I

    move-result p1

    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    .line 192
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layerColors:[[F

    array-length p1, p1

    iget v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    if-ge p1, v0, :cond_0

    .line 193
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You specified more layers than colors."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)V

    return-void
.end method
