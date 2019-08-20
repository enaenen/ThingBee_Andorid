.class public Lcom/sherdle/universal/attachmentviewer/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;
    }
.end annotation


# instance fields
.field private final MusicServiceBinder:Landroid/os/IBinder;

.field private final TAG:Ljava/lang/String;

.field private mNid:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private paused:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "MusicService"

    .line 33
    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->TAG:Ljava/lang/String;

    const/16 v0, 0x7b

    .line 34
    iput v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mNid:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->paused:Z

    .line 48
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/attachmentviewer/MusicService$MusicServiceBinder;-><init>(Lcom/sherdle/universal/attachmentviewer/MusicService;)V

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->MusicServiceBinder:Landroid/os/IBinder;

    return-void
.end method

.method private release()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public elapsed()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hideNotification()V
    .locals 2

    const-string v0, "notification"

    .line 201
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 202
    iget v1, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mNid:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "MusicService"

    const-string v0, "MusicService: onBind() called"

    .line 52
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->MusicServiceBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->release()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "MusicService: onCreate() called"

    .line 58
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MusicService"

    const-string v1, "MusicService: onDestroy() called"

    .line 68
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->release()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    const-string p1, "MusicService"

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MusicService: onStart() called, instance="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 148
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->hideNotification()V

    return-void
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 89
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->url:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->title:Ljava/lang/String;

    .line 91
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->paused:Z

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->start()V

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->paused:Z

    return-void

    .line 95
    :cond_0
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->release()V

    .line 100
    :cond_1
    :try_start_0
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 101
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->prepare()V

    .line 103
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->start()V

    .line 104
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "MusicService"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error trying to play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error trying to play track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\nError: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 109
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public seek(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public showNotification()V
    .locals 7

    .line 168
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->title:Ljava/lang/String;

    const v1, 0x7f0f002a

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "notification"

    .line 171
    invoke-virtual {p0, v2}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 172
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 174
    new-instance v3, Landroid/app/NotificationChannel;

    const-string v4, "radio_channel"

    const v5, 0x7f0f0028

    .line 175
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 177
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 180
    :cond_2
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "radio_channel"

    invoke-direct {v2, p0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0800d5

    .line 182
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 190
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "notification"

    .line 194
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 196
    iget v2, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mNid:I

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/MusicService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 143
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->showNotification()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->release()V

    .line 123
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->hideNotification()V

    return-void
.end method
