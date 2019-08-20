.class interface abstract Lcom/cleveroad/audiovisualization/InnerAudioVisualization;
.super Ljava/lang/Object;
.source "InnerAudioVisualization.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;
    }
.end annotation


# virtual methods
.method public abstract calmDownListener(Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;)V
    .param p1    # Lcom/cleveroad/audiovisualization/InnerAudioVisualization$CalmDownListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onDataReceived([F[F)V
.end method

.method public abstract startRendering()V
.end method

.method public abstract stopRendering()V
.end method
