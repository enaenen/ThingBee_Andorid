.class public abstract Lcom/cleveroad/audiovisualization/DbmHandler;
.super Ljava/lang/Object;
.source "DbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleveroad/audiovisualization/DbmHandler$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TData:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UPDATE_INTERVAL:J = 0x10L


# instance fields
.field private ampsArray:[F

.field private audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

.field private dBmArray:[F

.field private emptyArray:[F

.field private layersCount:I

.field private released:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cleveroad/audiovisualization/DbmHandler;)Lcom/cleveroad/audiovisualization/InnerAudioVisualization;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cleveroad/audiovisualization/DbmHandler;)[F
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->emptyArray:[F

    return-object p0
.end method

.method private cancelTimer()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 93
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final calmDownAndStopRendering()V
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Stop Rendering Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    .line 70
    iget-object v2, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->timer:Ljava/util/Timer;

    new-instance v3, Lcom/cleveroad/audiovisualization/DbmHandler$1;

    invoke-direct {v3, p0}, Lcom/cleveroad/audiovisualization/DbmHandler$1;-><init>(Lcom/cleveroad/audiovisualization/DbmHandler;)V

    const-wide/16 v4, 0x10

    const-wide/16 v6, 0x10

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    new-instance v1, Lcom/cleveroad/audiovisualization/DbmHandler$2;

    invoke-direct {v1, p0}, Lcom/cleveroad/audiovisualization/DbmHandler$2;-><init>(Lcom/cleveroad/audiovisualization/DbmHandler;)V

    invoke-interface {v0, v1}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization;->calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)V

    return-void
.end method

.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTData;)V"
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->layersCount:I

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->dBmArray:[F

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->ampsArray:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/cleveroad/audiovisualization/DbmHandler;->onDataReceivedImpl(Ljava/lang/Object;I[F[F)V

    .line 44
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->dBmArray:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->ampsArray:[F

    invoke-interface {p1, v0, v1}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization;->onDataReceived([F[F)V

    .line 45
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->startRendering()V

    return-void
.end method

.method protected abstract onDataReceivedImpl(Ljava/lang/Object;I[F[F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTData;I[F[F)V"
        }
    .end annotation
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->released:Z

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->dBmArray:[F

    .line 119
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->ampsArray:[F

    .line 120
    iput-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    return-void
.end method

.method setUp(Lcom/cleveroad/audiovisualization/InnerAudioVisualization;I)V
    .locals 0
    .param p1    # Lcom/cleveroad/audiovisualization/InnerAudioVisualization;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    .line 30
    iput p2, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->layersCount:I

    .line 31
    new-array p1, p2, [F

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->dBmArray:[F

    .line 32
    new-array p1, p2, [F

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->ampsArray:[F

    .line 33
    new-array p1, p2, [F

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->emptyArray:[F

    return-void
.end method

.method protected final startRendering()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->cancelTimer()V

    .line 53
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization;->startRendering()V

    return-void
.end method

.method protected final stopRendering()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->cancelTimer()V

    .line 61
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/DbmHandler;->audioVisualization:Lcom/cleveroad/audiovisualization/InnerAudioVisualization;

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/InnerAudioVisualization;->stopRendering()V

    return-void
.end method
