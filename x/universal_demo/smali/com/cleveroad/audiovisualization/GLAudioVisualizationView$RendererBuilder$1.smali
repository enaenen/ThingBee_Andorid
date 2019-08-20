.class Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/InnerAudioVisualization;


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

.field final synthetic val$renderer:Lcom/cleveroad/audiovisualization/GLRenderer;


# direct methods
.method constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;Lcom/cleveroad/audiovisualization/GLRenderer;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->val$renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)V
    .locals 0
    .param p1    # Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onDataReceived([F[F)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->val$renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/cleveroad/audiovisualization/GLRenderer;->onDataReceived([F[F)V

    return-void
.end method

.method public startRendering()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->access$1100(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->access$1100(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public stopRendering()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->access$1100(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getRenderMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->access$1100(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    :cond_0
    return-void
.end method
