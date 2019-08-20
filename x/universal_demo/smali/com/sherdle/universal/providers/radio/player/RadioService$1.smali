.class Lcom/sherdle/universal/providers/radio/player/RadioService$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 87
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$1;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService$1;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->pause()V

    return-void
.end method
