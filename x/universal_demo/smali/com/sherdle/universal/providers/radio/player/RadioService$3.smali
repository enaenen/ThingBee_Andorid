.class Lcom/sherdle/universal/providers/radio/player/RadioService$3;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "RadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/player/RadioService;
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

    .line 123
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$3;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$3;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 144
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$3;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->resume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    .line 135
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$3;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stop()V

    .line 137
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$3;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->access$100(Lcom/sherdle/universal/providers/radio/player/RadioService;)Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->cancelNotify()V

    return-void
.end method
