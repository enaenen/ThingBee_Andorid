.class public Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;
.super Ljava/lang/Object;
.source "StopWatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/util/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TickRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/util/StopWatch;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performTick()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->delayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickRunnable:Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget v2, v2, Lcom/devbrackets/android/exomedia/util/StopWatch;->tickDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 7

    .line 192
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v3, v3, Lcom/devbrackets/android/exomedia/util/StopWatch;->startTime:J

    sub-long v5, v1, v3

    iput-wide v5, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    .line 194
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->isRunning:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->performTick()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->listener:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/util/StopWatch;->listener:Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v1, v1, Lcom/devbrackets/android/exomedia/util/StopWatch;->currentTime:J

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/util/StopWatch$TickRunnable;->this$0:Lcom/devbrackets/android/exomedia/util/StopWatch;

    iget-wide v3, v3, Lcom/devbrackets/android/exomedia/util/StopWatch;->storedTime:J

    add-long v5, v1, v3

    invoke-interface {v0, v5, v6}, Lcom/devbrackets/android/exomedia/util/StopWatch$TickListener;->onStopWatchTick(J)V

    :cond_1
    return-void
.end method
