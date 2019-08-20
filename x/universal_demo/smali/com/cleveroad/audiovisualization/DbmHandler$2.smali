.class Lcom/cleveroad/audiovisualization/DbmHandler$2;
.super Ljava/lang/Object;
.source "DbmHandler.java"

# interfaces
.implements Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;


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

    .line 79
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler$2;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalmedDown()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler$2;->this$0:Lcom/cleveroad/audiovisualization/DbmHandler;

    invoke-virtual {v0}, Lcom/cleveroad/audiovisualization/DbmHandler;->stopRendering()V

    return-void
.end method
