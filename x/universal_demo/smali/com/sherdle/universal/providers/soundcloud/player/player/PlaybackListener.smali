.class Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackListener.java"


# static fields
.field static final ACTION_ON_BUFFERING_ENDED:Ljava/lang/String; = "simple_sc_listener_action_on_buffering_end"

.field static final ACTION_ON_BUFFERING_STARTED:Ljava/lang/String; = "simple_sc_listener_action_on_buffering_start"

.field static final ACTION_ON_DURATION_CHANGED:Ljava/lang/String; = "simple_sc_listener_action_on_duration_changed"

.field static final ACTION_ON_PLAYER_DESTROYED:Ljava/lang/String; = "simple_sc_listener_action_on_player_destroyed"

.field static final ACTION_ON_PLAYER_PAUSED:Ljava/lang/String; = "simple_sc_listener_action_on_track_paused"

.field static final ACTION_ON_PROGRESS_CHANGED:Ljava/lang/String; = "simple_sc_listener_action_on_progress_changed"

.field static final ACTION_ON_SEEK_COMPLETE:Ljava/lang/String; = "simple_sc_listener_action_on_player_seek_complete"

.field static final ACTION_ON_TRACK_PLAYED:Ljava/lang/String; = "simple_sc_listener_action_on_track_played"

.field static final EXTRA_KEY_CURRENT_TIME:Ljava/lang/String; = "simple_sc_listener_extra_current_time"

.field static final EXTRA_KEY_DURATION:Ljava/lang/String; = "simple_sc_listener_extra_duration"

.field static final EXTRA_KEY_TRACK:Ljava/lang/String; = "simple_sc_listener_extra_track"

.field private static final TAG:Ljava/lang/String; = "PlaybackListener"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBufferingEnded()V
    .locals 0

    return-void
.end method

.method protected onBufferingStarted()V
    .locals 0

    return-void
.end method

.method protected onDurationChanged(J)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 0

    return-void
.end method

.method protected onPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 0

    return-void
.end method

.method protected onPlayerDestroyed()V
    .locals 0

    return-void
.end method

.method protected onProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "simple_sc_listener_action_on_player_destroyed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "simple_sc_listener_action_on_player_seek_complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "simple_sc_listener_action_on_track_played"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "simple_sc_listener_action_on_track_paused"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "simple_sc_listener_action_on_duration_changed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "simple_sc_listener_action_on_buffering_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "simple_sc_listener_action_on_progress_changed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "simple_sc_listener_action_on_buffering_start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 106
    sget-object p1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "simple_sc_listener_extra_duration"

    const-wide/16 v0, 0x0

    .line 103
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onDurationChanged(J)V

    goto :goto_1

    :pswitch_1
    const-string p1, "simple_sc_listener_extra_current_time"

    .line 100
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onProgressChanged(I)V

    goto :goto_1

    .line 97
    :pswitch_2
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onBufferingEnded()V

    goto :goto_1

    .line 94
    :pswitch_3
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onBufferingStarted()V

    goto :goto_1

    .line 91
    :pswitch_4
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onPlayerDestroyed()V

    goto :goto_1

    :pswitch_5
    const-string p1, "simple_sc_listener_extra_current_time"

    .line 88
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onSeekTo(I)V

    goto :goto_1

    .line 85
    :pswitch_6
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onPause()V

    goto :goto_1

    :pswitch_7
    const-string p1, "simple_sc_listener_extra_track"

    .line 82
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e11207b -> :sswitch_7
        -0x66facf5e -> :sswitch_6
        -0x5517ef42 -> :sswitch_5
        -0x313d9af7 -> :sswitch_4
        -0x12f3735e -> :sswitch_3
        -0x126171b9 -> :sswitch_2
        0x17878c42 -> :sswitch_1
        0x21e3a83b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSeekTo(I)V
    .locals 0

    return-void
.end method
