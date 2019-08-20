.class public interface abstract Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$AudioVisualizationRenderer;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioVisualizationRenderer"
.end annotation


# virtual methods
.method public abstract updateConfiguration(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;)V
    .param p1    # Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
