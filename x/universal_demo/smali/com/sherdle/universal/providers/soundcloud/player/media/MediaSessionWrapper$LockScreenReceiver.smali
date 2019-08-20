.class final Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$1;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_4

    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2aa67ff0

    if-eq v0, v1, :cond_2

    const v1, 0x2085a339

    if-eq v0, v1, :cond_1

    const v1, 0x51e4916e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sherdle.universal.soundcloud.library.media.NEXT_TRACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "com.sherdle.universal.providers.soundcloud.library.media.PREVIOUS_TRACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "com.sherdle.universal.providers.soundcloud.library.media.TOGGLE_PLAYBACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 343
    :pswitch_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onSkipToPrevious()V

    goto :goto_1

    .line 340
    :pswitch_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onSkipToNext()V

    goto :goto_1

    .line 337
    :pswitch_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onPlayPauseToggle()V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
