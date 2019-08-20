.class final Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MusicServiceServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 121
    invoke-static {}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicServiceServiceConnection: Service connected"

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    check-cast p2, Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;

    invoke-virtual {p2}, Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;->getService()Lcom/sherdle/universal/attachmentviewer/MusicService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$202(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;Lcom/sherdle/universal/attachmentviewer/MusicService;)Lcom/sherdle/universal/attachmentviewer/MusicService;

    .line 123
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$300(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$200(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Lcom/sherdle/universal/attachmentviewer/MusicService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$400(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$200(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Lcom/sherdle/universal/attachmentviewer/MusicService;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$400(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$500(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->play(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$400(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$400(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$200(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Lcom/sherdle/universal/attachmentviewer/MusicService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$200(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Lcom/sherdle/universal/attachmentviewer/MusicService;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {p2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$400(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$500(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->play(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->connectMediaControl()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicServiceServiceConnection: Service disconnected"

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$202(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;Lcom/sherdle/universal/attachmentviewer/MusicService;)Lcom/sherdle/universal/attachmentviewer/MusicService;

    return-void
.end method
