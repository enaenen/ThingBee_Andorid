.class Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;
.super Landroid/os/Handler;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Landroid/os/Looper;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    .line 922
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 927
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 929
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$1200(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 933
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stopSelf()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
