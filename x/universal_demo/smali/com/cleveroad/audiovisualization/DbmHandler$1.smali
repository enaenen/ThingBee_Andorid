.class Lcom/cleveroad/audiovisualization/DbmHandler$1;
.super Ljava/util/TimerTask;
.source "DbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cleveroad/audiovisualization/DbmHandler;->calmDownAndStopRendering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cleveroad/audiovisualization/DbmHandler;


# direct methods
.method constructor <init>(Lcom/cleveroad/audiovisualization/DbmHandler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler$1;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler$1;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->access$000(Lcom/cleveroad/audiovisualization/DbmHandler;)Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler$1;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-static {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->access$000(Lcom/cleveroad/audiovisualization/DbmHandler;)Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    move-result-object v0

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/DbmHandler$1;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-static {v1}, Lcom/cleveroad/audiovisualization/DbmHandler;->access$100(Lcom/cleveroad/audiovisualization/DbmHandler;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/DbmHandler$1;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-static {v2}, Lcom/cleveroad/audiovisualization/DbmHandler;->access$100(Lcom/cleveroad/audiovisualization/DbmHandler;)[F

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization;->onDataReceived([F[F)V

    :cond_0
    return-void
.end method
