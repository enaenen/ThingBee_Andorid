.class Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;
.super Landroid/os/CountDownTimer;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;JJ)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simple_sc_listener_action_on_progress_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_extra_current_time"

    .line 777
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    .line 778
    invoke-static {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    .line 777
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$400(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 769
    new-instance p1, Landroid/content/Intent;

    const-string p2, "simple_sc_listener_action_on_progress_changed"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "simple_sc_listener_extra_current_time"

    .line 770
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$300(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$400(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
