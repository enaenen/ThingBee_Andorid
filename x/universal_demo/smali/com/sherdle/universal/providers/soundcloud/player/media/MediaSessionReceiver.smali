.class public Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    .line 26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 27
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x55

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p2, :cond_2

    const-string p2, "com.sherdle.universal.providers.soundcloud.library.media.PREVIOUS_TRACK"

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionReceiver;->sendAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-nez p2, :cond_2

    const-string p2, "sherdle.universal.soundcloud.library.media.NEXT_TRACK"

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionReceiver;->sendAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "com.sherdle.universal.providers.soundcloud.library.media.TOGGLE_PLAYBACK"

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionReceiver;->sendAction(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
