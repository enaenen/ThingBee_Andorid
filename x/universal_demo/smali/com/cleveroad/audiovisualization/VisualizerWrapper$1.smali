.class Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;
.super Ljava/lang/Object;
.source "VisualizerWrapper.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cleveroad/audiovisualization/VisualizerWrapper;-><init>(Landroid/content/Context;ILcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

.field final synthetic val$onFftDataCaptureListener:Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;


# direct methods
.method constructor <init>(Lcom/cleveroad/audiovisualization/VisualizerWrapper;Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->val$onFftDataCaptureListener:Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 8

    .line 34
    invoke-static {p2}, Lcom/cleveroad/audiovisualization/Utils;->allElementsAreZero([B)Z

    move-result p1

    .line 35
    iget-object p3, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-static {p3}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->access$000(Lcom/cleveroad/audiovisualization/VisualizerWrapper;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->access$002(Lcom/cleveroad/audiovisualization/VisualizerWrapper;J)J

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-static {p1, v2, v3}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->access$002(Lcom/cleveroad/audiovisualization/VisualizerWrapper;J)J

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-static {p1}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->access$000(Lcom/cleveroad/audiovisualization/VisualizerWrapper;)J

    move-result-wide v4

    sub-long v6, v0, v4

    const-wide/16 v0, 0x1f4

    cmp-long p1, v6, v0

    if-ltz p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->setEnabled(Z)V

    .line 44
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->this$0:Lcom/cleveroad/audiovisualization/VisualizerWrapper;

    invoke-static {p1, v2, v3}, Lcom/cleveroad/audiovisualization/VisualizerWrapper;->access$002(Lcom/cleveroad/audiovisualization/VisualizerWrapper;J)J

    .line 47
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/VisualizerWrapper$1;->val$onFftDataCaptureListener:Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;

    invoke-interface {p1, p2}, Lcom/cleveroad/audiovisualization/VisualizerWrapper$OnFftDataCaptureListener;->onFftDataCapture([B)V

    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method
