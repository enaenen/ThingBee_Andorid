.class public Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererBuilder"
.end annotation


# instance fields
.field private final builder:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private handler:Lcom/cleveroad/audiovisualization/DbmHandler;


# direct methods
.method public constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)V
    .locals 0
    .param p1    # Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->builder:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    return-void
.end method

.method static synthetic access$1100(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$AudioVisualizationRenderer;
    .locals 5

    .line 435
    new-instance v0, Lcom/cleveroad/audiovisualization/GLRenderer;

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->builder:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    invoke-static {v1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$000(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->builder:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;)V

    invoke-direct {v0, v1, v2}, Lcom/cleveroad/audiovisualization/GLRenderer;-><init>(Landroid/content/Context;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;)V

    .line 436
    new-instance v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;

    invoke-direct {v1, p0, v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$1;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;Lcom/cleveroad/audiovisualization/GLRenderer;)V

    .line 461
    new-instance v2, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$2;

    invoke-direct {v2, p0, v1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder$2;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;Lcom/cleveroad/audiovisualization/InnerAudioVisualization;)V

    invoke-virtual {v0, v2}, Lcom/cleveroad/audiovisualization/GLRenderer;->calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)Lcom/cleveroad/audiovisualization/GLRenderer;

    .line 467
    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->handler:Lcom/cleveroad/audiovisualization/DbmHandler;

    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->builder:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    invoke-static {v3}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$800(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/cleveroad/audiovisualization/DbmHandler;->setUp(Lcom/cleveroad/audiovisualization/InnerAudioVisualization;I)V

    return-object v0
.end method

.method public glSurfaceView(Landroid/opengl/GLSurfaceView;)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;
    .locals 0
    .param p1    # Landroid/opengl/GLSurfaceView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 425
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method public handler(Lcom/cleveroad/audiovisualization/DbmHandler;)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;->handler:Lcom/cleveroad/audiovisualization/DbmHandler;

    return-object p0
.end method
