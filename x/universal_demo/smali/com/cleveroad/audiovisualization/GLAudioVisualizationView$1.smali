.class Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;


# direct methods
.method constructor <init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalmedDown()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->stopRendering()V

    .line 48
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->access$200(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;)Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;->this$0:Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;->access$200(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;)Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;->onCalmedDown()V

    :cond_0
    return-void
.end method
