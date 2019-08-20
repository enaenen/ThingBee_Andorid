.class public Lcom/devbrackets/android/exomedia/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;,
        Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TICK_DELAY:I = 0x21

.field protected static final HANDLER_THREAD_NAME:Ljava/lang/String; = "ExoMedia_StopWatch_HandlerThread"


# instance fields
.field protected currentTime:J

.field protected delayedHandler:Landroid/os/Handler;

.field protected handlerThread:Landroid/os/HandlerThread;

.field protected volatile isRunning:Z

.field protected listener:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

.field protected startTime:J

.field protected storedTime:J

.field protected tickDelay:I

.field protected tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

.field protected useHandlerThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    const/16 v1, 0x21

    .line 37
    iput v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    .line 41
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->useHandlerThread:Z

    .line 44
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    .line 47
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 48
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    .line 70
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    const/16 v1, 0x21

    .line 37
    iput v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    .line 41
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->useHandlerThread:Z

    .line 44
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;-><init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    .line 47
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 48
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->useHandlerThread:Z

    return-void
.end method


# virtual methods
.method public getTickDelay()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    return v0
.end method

.method public getTime()J
    .locals 6

    .line 166
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    iget-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    add-long v4, v0, v2

    return-wide v4
.end method

.method public getTimeInt()I
    .locals 6

    .line 176
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    iget-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    add-long v4, v0, v2

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

    long-to-int v0, v4

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    return v0
.end method

.method public overrideCurrentTime(J)V
    .locals 2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    const-wide/16 v0, 0x0

    .line 146
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 147
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 135
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    return-void
.end method

.method public setTickDelay(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    return-void
.end method

.method public setTickListener(Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->listener:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    .line 103
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->useHandlerThread:Z

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMedia_StopWatch_HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->performTick()V

    return-void
.end method

.method public stop()V
    .locals 8

    .line 116
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 127
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    sub-long v6, v2, v4

    add-long v2, v0, v6

    iput-wide v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    return-void
.end method
