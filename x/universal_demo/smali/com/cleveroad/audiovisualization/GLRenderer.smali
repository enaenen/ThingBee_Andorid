.class Lcom/cleveroad/audiovisualization/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$AudioVisualizationRenderer;


# static fields
.field private static final ANIMATION_TIME:J = 0x190L

.field private static final D_ANGLE:F = 0.015707964f


# instance fields
.field bgUpdated:Z

.field private calmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

.field private final configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

.field private final height:F

.field private layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

.field private final random:Ljava/util/Random;

.field private ratioY:F

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->ratioY:F

    .line 30
    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    .line 31
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->random:Ljava/util/Random;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->startTime:J

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    iput p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->height:F

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 0

    .line 109
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 110
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 111
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p0
.end method


# virtual methods
.method public calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)Lcom/cleveroad/audiovisualization/GLRenderer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->calmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    return-object p0
.end method

.method public final onDataReceived([F[F)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    aget-object v1, v1, v0

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->updateData(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    .line 64
    iget-boolean p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->bgUpdated:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-object p1, p1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->backgroundColor:[F

    .line 66
    aget v2, p1, v1

    aget v3, p1, v0

    const/4 v4, 0x2

    aget v4, p1, v4

    const/4 v5, 0x3

    aget p1, p1, v5

    invoke-static {v2, v3, v4, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 67
    iput-boolean v1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->bgUpdated:Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x4100

    .line 69
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 71
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 72
    iget-wide v4, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->startTime:J

    sub-long v6, v2, v4

    .line 73
    iput-wide v2, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->startTime:J

    .line 76
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v8, p1, v3

    int-to-float v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v9, v9, v10

    .line 78
    iget-object v11, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v11, v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    const v11, 0x3f4ccccd    # 0.8f

    mul-float v9, v9, v11

    sub-float/2addr v10, v9

    const v9, 0x3c80adfd

    mul-float v10, v10, v9

    .line 79
    iget v9, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->ratioY:F

    invoke-virtual {v8, v6, v7, v10, v9}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->update(JFF)V

    .line 80
    invoke-virtual {v8}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->isCalmedDown()Z

    move-result v8

    and-int/2addr v5, v8

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 84
    invoke-virtual {v2}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->draw()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    .line 86
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->calmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    if-eqz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->calmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    invoke-interface {p1}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;->onCalmedDown()V

    :cond_3
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 58
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 59
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->ratioY:F

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11

    .line 43
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-object p1, p1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->backgroundColor:[F

    const/4 p2, 0x0

    .line 44
    aget v0, p1, p2

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v0, v2, v3, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 45
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget p1, p1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    new-array p1, p1, [Lcom/cleveroad/audiovisualization/GLWaveLayer;

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    .line 46
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget p1, p1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->footerHeight:F

    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget v0, v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->height:F

    div-float/2addr p1, v0

    .line 47
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget v0, v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->waveHeight:F

    iget v2, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->height:F

    div-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v3, v3

    if-ge p2, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v3, v3

    sub-int/2addr v3, p2

    sub-int/2addr v3, v1

    const/high16 v4, -0x40800000    # -1.0f

    int-to-float v3, v3

    mul-float v3, v3, v0

    mul-float v3, v3, v2

    add-float v8, v3, v4

    mul-float v3, p1, v2

    add-float v9, v8, v3

    .line 52
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    new-instance v4, Lcom/cleveroad/audiovisualization/GLWaveLayer;

    iget-object v6, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-object v5, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-object v5, v5, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layerColors:[[F

    aget-object v7, v5, p2

    iget-object v10, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->random:Ljava/util/Random;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/cleveroad/audiovisualization/GLWaveLayer;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;[FFFLjava/util/Random;)V

    aput-object v4, v3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateConfiguration(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;)V
    .locals 7
    .param p1    # Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-object v0, v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->backgroundColor:[F

    .line 118
    invoke-virtual {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->backgroundColor()[F

    move-result-object v1

    const/4 v2, 0x0

    .line 119
    iput-boolean v2, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->bgUpdated:Z

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 121
    iget-boolean v4, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->bgUpdated:Z

    aget v5, v0, v3

    aget v6, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->bgUpdated:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->bgUpdated:Z

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    invoke-virtual {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->backgroundColor()[F

    move-result-object v1

    iput-object v1, v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->backgroundColor:[F

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    if-nez v0, :cond_3

    return-void

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->layerColors()[[F

    move-result-object p1

    .line 129
    :goto_2
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLRenderer;->layers:[Lcom/cleveroad/audiovisualization/GLWaveLayer;

    aget-object v0, v0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/cleveroad/audiovisualization/GLWaveLayer;->setColor([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
