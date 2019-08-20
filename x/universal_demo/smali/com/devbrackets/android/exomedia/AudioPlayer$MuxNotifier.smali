.class Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;
.super Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MuxNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/AudioPlayer;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;

    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/AudioPlayer;Lcom/devbrackets/android/exomedia/AudioPlayer$1;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/AudioPlayer;)V

    return-void
.end method


# virtual methods
.method public onExoPlayerError(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 393
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/AudioPlayer;->stopPlayback()V

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->forcePrepare()V

    :cond_0
    return-void
.end method

.method public onMediaPlaybackEnded()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/AudioPlayer;->access$100(Lcom/devbrackets/android/exomedia/AudioPlayer;)V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->onMediaPrepared()V

    return-void
.end method

.method public shouldNotifyCompletion(J)Z
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/AudioPlayer;->getCurrentPosition()J

    move-result-wide v0

    add-long v2, v0, p1

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/AudioPlayer;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/AudioPlayer;->getDuration()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
