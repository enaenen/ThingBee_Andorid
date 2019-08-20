.class Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$2;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->build()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$AudioVisualizationRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

.field final synthetic val$audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;


# direct methods
.method constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;Lcom/cleveroad/audiovisualization/InnerAudioVisualization;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$2;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$2;->val$audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalmedDown()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$2;->val$audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization;->stopRendering()V

    return-void
.end method
