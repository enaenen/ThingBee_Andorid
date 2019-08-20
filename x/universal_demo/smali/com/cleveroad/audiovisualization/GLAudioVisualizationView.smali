.class public Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
.super Landroid/opengl/GLSurfaceView;
.source "GLAudioVisualizationView.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/AudioVisualization;
.implements Lcom/cleveroad/audiovisualization/InnerAudioVisualization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$AudioVisualizationRenderer;,
        Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$RendererBuilder;,
        Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;,
        Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;,
        Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;
    }
.end annotation


# static fields
.field private static final EGL_VERSION:I = 0x2


# instance fields
.field private final configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

.field private dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cleveroad/audiovisualization/DbmHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private innerCalmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

.field private final renderer:Lcom/cleveroad/audiovisualization/GLRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->isInEditMode()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    .line 37
    new-instance p1, Lcom/cleveroad/audiovisualization/GLRenderer;

    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    invoke-direct {p1, p2, v0}, Lcom/cleveroad/audiovisualization/GLRenderer;-><init>(Landroid/content/Context;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;)V

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    .line 38
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->init()V

    return-void
.end method

.method private constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)V
    .locals 2
    .param p1    # Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->access$000(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;)V

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    .line 30
    new-instance p1, Lcom/cleveroad/audiovisualization/GLRenderer;

    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    invoke-direct {p1, v0, v1}, Lcom/cleveroad/audiovisualization/GLRenderer;-><init>(Landroid/content/Context;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;)V

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    .line 31
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;)Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->innerCalmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->setEGLContextClientVersion(I)V

    .line 43
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    invoke-virtual {p0, v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 44
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    new-instance v1, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;

    invoke-direct {v1, p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;)V

    invoke-virtual {v0, v1}, Lcom/cleveroad/audiovisualization/GLRenderer;->calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)Lcom/cleveroad/audiovisualization/GLRenderer;

    return-void
.end method


# virtual methods
.method public calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)V
    .locals 0
    .param p1    # Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->innerCalmDownListener:Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    return-void
.end method

.method public linkTo(Lcom/cleveroad/audiovisualization/DbmHandler;)V
    .locals 1
    .param p1    # Lcom/cleveroad/audiovisualization/DbmHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cleveroad/audiovisualization/DbmHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->release()V

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    .line 77
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->configuration:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;

    iget v0, v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Configuration;->layersCount:I

    invoke-virtual {p1, p0, v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->setUp(Lcom/cleveroad/audiovisualization/InnerAudioVisualization;I)V

    return-void
.end method

.method public onDataReceived([F[F)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->renderer:Lcom/cleveroad/audiovisualization/GLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/cleveroad/audiovisualization/GLRenderer;->onDataReceived([F[F)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->onPause()V

    .line 68
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->onResume()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->release()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->dbmHandler:Lcom/cleveroad/audiovisualization/DbmHandler;

    :cond_0
    return-void
.end method

.method public startRendering()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->getRenderMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public stopRendering()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->getRenderMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->setRenderMode(I)V

    :cond_0
    return-void
.end method
