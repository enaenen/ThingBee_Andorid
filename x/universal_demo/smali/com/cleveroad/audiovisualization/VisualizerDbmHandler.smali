.class public Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;
.super Lcom/cleveroad/audiovisualization/DbmHandler;
.source "VisualizerDbmHandler.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cleveroad/audiovisualization/DbmHandler<",
        "[B>;",
        "Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;",
        "Landroid/media/MediaPlayer$OnPreparedListener;",
        "Landroid/media/MediaPlayer$OnCompletionListener;"
    }
.end annotation


# static fields
.field private static final MAX_DB_VALUE:F = 76.0f


# instance fields
.field private allAmps:[F

.field private final coefficients:[F

.field private dbs:[F

.field private innerOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private innerOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;-><init>()V

    const/4 v0, 0x4

    .line 24
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->coefficients:[F

    .line 32
    new-instance v0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-direct {v0, p1, p2, p0}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;-><init>(Landroid/content/Context;ILcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;)V

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    return-void

    nop

    :array_0
    .array-data 4
        0x3aedc5b8
        0x3c020821
        0x3d683315
        0x3e683315
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 38
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->calmDownAndStopRendering()V

    .line 97
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->innerOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->innerOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onDataReceivedImpl(Ljava/lang/Object;I[F[F)V
    .locals 0

    .line 10
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->onDataReceivedImpl([BI[F[F)V

    return-void
.end method

.method protected onDataReceivedImpl([BI[F[F)V
    .locals 8

    .line 44
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 45
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->dbs:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->dbs:[F

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 46
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->dbs:[F

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->allAmps:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->allAmps:[F

    array-length v1, v1

    if-eq v1, v0, :cond_3

    .line 49
    :cond_2
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->allAmps:[F

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    mul-int/lit8 v3, v2, 0x2

    .line 52
    aget-byte v4, p1, v3

    int-to-float v4, v4

    add-int/lit8 v3, v3, 0x1

    .line 53
    aget-byte v3, p1, v3

    int-to-float v3, v3

    mul-float v4, v4, v4

    mul-float v3, v3, v3

    add-float/2addr v4, v3

    .line 55
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->dbs:[F

    invoke-static {v4}, Lcom/cleveroad/audiovisualization/Utils;->magnitudeToDb(F)F

    move-result v5

    aput v5, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_5

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    .line 60
    :cond_5
    iget-object v5, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->allAmps:[F

    float-to-double v6, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double v6, v6, v3

    int-to-double v3, v0

    div-double/2addr v6, v3

    double-to-float v3, v6

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-ge v1, p2, :cond_7

    .line 63
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->coefficients:[F

    aget v0, v0, v1

    array-length v2, p1

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 64
    iget-object v2, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->dbs:[F

    aget v2, v2, v0

    .line 65
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->allAmps:[F

    aget v0, v3, v0

    const/high16 v3, 0x42980000    # 76.0f

    div-float/2addr v2, v3

    .line 66
    aput v2, p3, v1

    .line 67
    aput v0, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public onFftDataCapture([B)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->onDataReceived(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->setEnabled(Z)V

    .line 85
    invoke-super {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->onPause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->startRendering()V

    .line 106
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->innerOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->innerOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->setEnabled(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->release()V

    .line 91
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->visualizerWrapper:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->release()V

    return-void
.end method

.method public setInnerOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->innerOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setInnerOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;->innerOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method
