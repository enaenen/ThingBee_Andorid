.class public Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;
.super Lcom/cleveroad/audiovisualization/DbmHandler;
.source "SpeechRecognizerDbmHandler.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cleveroad/audiovisualization/DbmHandler<",
        "Ljava/lang/Float;",
        ">;",
        "Landroid/speech/RecognitionListener;"
    }
.end annotation


# static fields
.field private static final MAX_RMS_DB_VALUE:F = 10.0f

.field private static final MIN_RMS_DB_VALUE:F = -2.12f


# instance fields
.field private innerRecognitionListener:Landroid/speech/RecognitionListener;

.field private final maxRmsDbValue:F

.field private final minRmsDbValue:F

.field private final speechRecognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const v0, -0x3ff851ec    # -2.12f

    const/high16 v1, 0x41200000    # 10.0f

    .line 30
    invoke-direct {p0, p1, v0, v1}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;-><init>(Landroid/content/Context;FF)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;FF)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 40
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {p1, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 41
    iput p2, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->minRmsDbValue:F

    .line 42
    iput p3, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->maxRmsDbValue:F

    return-void
.end method


# virtual methods
.method public innerRecognitionListener()Landroid/speech/RecognitionListener;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    return-object v0
.end method

.method public innerRecognitionListener(Landroid/speech/RecognitionListener;)Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;
    .locals 0
    .param p1    # Landroid/speech/RecognitionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    return-object p0
.end method

.method public onBeginningOfSpeech()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    :cond_0
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    :cond_0
    return-void
.end method

.method protected onDataReceivedImpl(Ljava/lang/Float;I[F[F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 82
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->minRmsDbValue:F

    iget v3, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->maxRmsDbValue:F

    invoke-static {v1, v2, v3}, Lcom/cleveroad/audiovisualization/Utils;->normalize(FFF)F

    move-result v1

    aput v1, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 83
    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic onDataReceivedImpl(Ljava/lang/Object;I[F[F)V
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->onDataReceivedImpl(Ljava/lang/Float;I[F[F)V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1, p2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 139
    iget v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->minRmsDbValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->onDataReceived(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->calmDownAndStopRendering()V

    .line 141
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1

    .line 109
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->onDataReceived(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->innerRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/cleveroad/audiovisualization/DbmHandler;->release()V

    .line 90
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/SpeechRecognizerDbmHandler;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    return-void
.end method
