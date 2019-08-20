.class Lcom/sherdle/universal/providers/radio/player/RadioService$2;
.super Landroid/telephony/PhoneStateListener;
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

    .line 98
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_4

    .line 113
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->access$000(Lcom/sherdle/universal/providers/radio/player/RadioService;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sherdle/universal/providers/radio/player/RadioService;->access$002(Lcom/sherdle/universal/providers/radio/player/RadioService;Z)Z

    .line 116
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->resume()V

    goto :goto_1

    .line 106
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {p1, p2}, Lcom/sherdle/universal/providers/radio/player/RadioService;->access$002(Lcom/sherdle/universal/providers/radio/player/RadioService;Z)Z

    .line 109
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stop()V

    :cond_4
    :goto_1
    return-void
.end method
