.class public Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;
.super Ljava/lang/Object;
.source "MediaNotificationManager.java"


# static fields
.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "radio_channel"

.field public static final NOTIFICATION_ID:I = 0x22b


# instance fields
.field private meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

.field private notifyIcon:Landroid/graphics/Bitmap;

.field private playbackStatus:Ljava/lang/String;

.field private resources:Landroid/content/res/Resources;

.field private service:Lcom/sherdle/universal/providers/radio/player/RadioService;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    .line 41
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private startNotify()V
    .locals 11

    .line 59
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->playbackStatus:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->notifyIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->resources:Landroid/content/res/Resources;

    const v1, 0x7f0800be

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->notifyIcon:Landroid/graphics/Bitmap;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const-string v1, "notification"

    .line 65
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    .line 68
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "radio_channel"

    iget-object v5, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const v6, 0x7f0f0028

    .line 69
    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    const v0, 0x7f0800c9

    .line 76
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const-class v5, Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.sherdle.universal.radio.ACTION_PAUSE"

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const/4 v5, 0x1

    invoke-static {v2, v5, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 80
    iget-object v6, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->playbackStatus:Ljava/lang/String;

    const-string v7, "PlaybackStatus_PAUSED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const v0, 0x7f0800cc

    const-string v2, "com.sherdle.universal.radio.ACTION_PLAY"

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 86
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const-class v7, Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.sherdle.universal.radio.ACTION_STOP"

    .line 87
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v6, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const/4 v7, 0x3

    invoke-static {v6, v7, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 90
    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const-class v8, Lcom/sherdle/universal/HolderActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 92
    sget-object v8, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    new-array v9, v5, [Ljava/lang/String;

    iget-object v10, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v10}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getStreamUrl()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    sget-object v8, Lcom/sherdle/universal/MainActivity;->FRAGMENT_CLASS:Ljava/lang/String;

    const-class v9, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 94
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    .line 96
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v8, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {v8, v4, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 99
    iget-object v6, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-static {v6}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v6

    const/16 v7, 0x22b

    .line 100
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 102
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v8, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const-string v9, "radio_channel"

    invoke-direct {v6, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v8, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    invoke-virtual {v8}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getArtist()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    .line 106
    invoke-virtual {v8}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getArtist()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->resources:Landroid/content/res/Resources;

    const v9, 0x7f0f009f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    :goto_0
    iget-object v9, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    invoke-virtual {v9}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getSong()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    .line 108
    invoke-virtual {v9}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getSong()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->resources:Landroid/content/res/Resources;

    const v10, 0x7f0f0026

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 110
    :goto_1
    invoke-virtual {v6, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 111
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->notifyIcon:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 113
    invoke-virtual {v8, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 114
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v8, 0x7f0800d5

    .line 115
    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v8, "pause"

    .line 116
    invoke-virtual {v4, v0, v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f0800db

    const-string v4, "stop"

    .line 117
    invoke-virtual {v0, v2, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v2, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v2}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;-><init>()V

    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    .line 121
    invoke-virtual {v4}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getMediaSession()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 122
    invoke-virtual {v2, v3}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v2

    .line 123
    invoke-virtual {v2, v5}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setShowCancelButton(Z)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v1}, Landroid/support/v4/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroid/support/v4/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v1, v7, v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->startForeground(ILandroid/app/Notification;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method


# virtual methods
.method public cancelNotify()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stopForeground(Z)V

    return-void
.end method

.method public getMetaData()Lcom/sherdle/universal/providers/radio/metadata/Metadata;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    return-object v0
.end method

.method public startNotify(Landroid/graphics/Bitmap;Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->notifyIcon:Landroid/graphics/Bitmap;

    .line 54
    iput-object p2, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->meta:Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    .line 55
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->startNotify()V

    return-void
.end method

.method public startNotify(Ljava/lang/String;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->playbackStatus:Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->resources:Landroid/content/res/Resources;

    const v0, 0x7f0800be

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->notifyIcon:Landroid/graphics/Bitmap;

    .line 48
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->startNotify()V

    return-void
.end method
