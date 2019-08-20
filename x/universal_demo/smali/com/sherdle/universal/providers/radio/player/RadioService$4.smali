.class Lcom/sherdle/universal/providers/radio/player/RadioService$4;
.super Ljava/lang/Object;
.source "RadioService.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/radio/player/RadioService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$4;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$4;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getAudioSessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->onAudioSessionId(Ljava/lang/Integer;)V

    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 0

    return-void
.end method
