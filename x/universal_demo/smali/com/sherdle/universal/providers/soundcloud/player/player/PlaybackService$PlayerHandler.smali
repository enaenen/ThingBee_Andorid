.class final Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;
.super Landroid/os/Handler;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Landroid/os/Looper;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    .line 838
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 843
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 844
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 845
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 856
    :pswitch_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$800(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    goto :goto_0

    .line 865
    :pswitch_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    const-string v1, "sound_cloud_player_bundle_key_seek_to"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$1100(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;I)V

    goto :goto_0

    .line 862
    :pswitch_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$1000(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    goto :goto_0

    .line 859
    :pswitch_3
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$900(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    goto :goto_0

    .line 853
    :pswitch_4
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$700(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    goto :goto_0

    .line 850
    :pswitch_5
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$600(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    goto :goto_0

    .line 847
    :pswitch_6
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    const-string v1, "sound_cloud_player_bundle_key_track_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$500(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stopSelf()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
