.class Lcom/sherdle/universal/providers/radio/player/RadioManager$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/player/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/player/RadioManager;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/radio/player/RadioManager;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager$1;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 84
    check-cast p2, Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->access$002(Lcom/sherdle/universal/providers/radio/player/RadioService;)Lcom/sherdle/universal/providers/radio/player/RadioService;

    .line 85
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager$1;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->access$102(Lcom/sherdle/universal/providers/radio/player/RadioManager;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager$1;->this$0:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->access$102(Lcom/sherdle/universal/providers/radio/player/RadioManager;Z)Z

    return-void
.end method
