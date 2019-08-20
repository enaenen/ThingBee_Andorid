.class public Lcom/cleveroad/audiovisualization/DbmHandler$Factory;
.super Ljava/lang/Object;
.source "DbmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleveroad/audiovisualization/DbmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newSpeechRecognizerDbmHandler(Landroid/content/Context;FF)Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    new-instance v0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;-><init>(Landroid/content/Context;FF)V

    return-object v0
.end method

.method public static newSpeechRecognizerHandler(Landroid/content/Context;)Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 172
    new-instance v0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;

    invoke-direct {v0, p0}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static newVisualizerHandler(Landroid/content/Context;I)Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    new-instance v0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;

    invoke-direct {v0, p0, p1}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newVisualizerHandler(Landroid/content/Context;Landroid/media/MediaPlayer;)Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/media/MediaPlayer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    new-instance v0, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;

    invoke-direct {v0, p0, p1}, Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;-><init>(Landroid/content/Context;Landroid/media/MediaPlayer;)V

    return-object v0
.end method
