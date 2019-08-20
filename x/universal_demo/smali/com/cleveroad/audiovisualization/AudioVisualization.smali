.class public interface abstract Lcom/cleveroad/audiovisualization/AudioVisualization;
.super Ljava/lang/Object;
.source "AudioVisualization.java"


# virtual methods
.method public abstract linkTo(Lcom/cleveroad/audiovisualization/DbmHandler;)V
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
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract release()V
.end method
