.class Lcom/cleveroad/audiovisualization/VisualizerWrapper;
.super Ljava/lang/Object;
.source "VisualizerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;
    }
.end annotation


# static fields
.field private static final WAIT_UNTIL_HACK:J = 0x1f4L


# instance fields
.field private captureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private captureRate:I

.field private lastZeroArrayTimestamp:J

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private visualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/cleveroad/audiovisualization/R$raw;->av_workaround_1min:I

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 22
    new-instance p1, Landroid/media/audiofx/Visualizer;

    invoke-direct {p1, p2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 23
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 24
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object p2

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 25
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result p1

    iput p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->captureRate:I

    .line 26
    new-instance p1, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;

    invoke-direct {p1, p0, p3}, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;-><init>(Lcom/cleveroad/audiovisualization/VisualizerWrapper;Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;)V

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->captureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 50
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    return-void
.end method

.method static synthetic access$000(Lcom/cleveroad/audiovisualization/VisualizerWrapper;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->lastZeroArrayTimestamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/cleveroad/audiovisualization/VisualizerWrapper;J)J
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->lastZeroArrayTimestamp:J

    return-wide p1
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 55
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 57
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 58
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->captureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    iget v3, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->captureRate:I

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->captureRate:I

    invoke-virtual {p1, v2, v3, v1, v1}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    return-void
.end method
