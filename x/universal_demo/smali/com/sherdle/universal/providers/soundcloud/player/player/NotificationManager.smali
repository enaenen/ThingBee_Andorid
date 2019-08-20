.class final Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x42

.field private static final REQUEST_CODE_CLEAR:I = 0x40

.field private static final REQUEST_CODE_NEXT:I = 0x20

.field private static final REQUEST_CODE_PLAYBACK:I = 0x10

.field private static final REQUEST_CODE_PREVIOUS:I = 0x30

.field static final REQUEST_DISPLAYING_CONTROLLER:I = 0x42004200

.field private static sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;


# instance fields
.field private mClearPendingIntent:Landroid/app/PendingIntent;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mNextPendingIntent:Landroid/app/PendingIntent;

.field private mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

.field private mNotificationExpandedView:Landroid/widget/RemoteViews;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationView:Landroid/widget/RemoteViews;

.field private mPreviousPendingIntent:Landroid/app/PendingIntent;

.field private mTogglePlaybackPendingIntent:Landroid/app/PendingIntent;

.field private mTrackId:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 128
    iput-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTrackId:J

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mMainThreadHandler:Landroid/os/Handler;

    const-string v0, "notification"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 136
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->initializePendingIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/widget/RemoteViews;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/widget/RemoteViews;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/app/Notification;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->buildNotification()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private addSmallIcon(Landroid/widget/RemoteViews;)V
    .locals 3

    const-string v0, "setBackgroundResource"

    .line 380
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    .line 381
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->getNotificationIconBackground()I

    move-result v1

    const v2, 0x7f0b009c

    .line 380
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 382
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    .line 383
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->getNotificationIcon()I

    move-result v0

    .line 382
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-void
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 355
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 356
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_0
    return-object v0
.end method

.method private createNotificationChannel(Landroid/content/Context;)V
    .locals 4

    const-string v0, "notification"

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 364
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 366
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "radio_channel"

    const v3, 0x7f0f0028

    .line 367
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-direct {v1, v2, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 369
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 370
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;
    .locals 1

    .line 146
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    .line 149
    :cond_0
    sget-object p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    return-object p0
.end method

.method private initNotificationBuilder(Landroid/content/Context;)V
    .locals 3

    .line 292
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "radio_channel"

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 293
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b009a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    .line 295
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b009b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->addSmallIcon(Landroid/widget/RemoteViews;)V

    .line 301
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->addSmallIcon(Landroid/widget/RemoteViews;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mPreviousPendingIntent:Landroid/app/PendingIntent;

    const v2, 0x7f090174

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 307
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mPreviousPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 309
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNextPendingIntent:Landroid/app/PendingIntent;

    const v2, 0x7f090172

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 311
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNextPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 313
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTogglePlaybackPendingIntent:Landroid/app/PendingIntent;

    const v2, 0x7f090173

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 315
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTogglePlaybackPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 317
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mClearPendingIntent:Landroid/app/PendingIntent;

    const v2, 0x7f090170

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 319
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mClearPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 323
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->getNotificationIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 326
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 329
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 332
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->getNotificationActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->getNotificationBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const v0, 0x42004200

    const/high16 v2, 0x8000000

    .line 341
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_2
    return-void
.end method

.method private initializePendingIntent(Landroid/content/Context;)V
    .locals 3

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound_cloud_toggle_playback"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    const/16 v2, 0x10

    .line 262
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTogglePlaybackPendingIntent:Landroid/app/PendingIntent;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sound_cloud_player_next"

    .line 267
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 268
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNextPendingIntent:Landroid/app/PendingIntent;

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sound_cloud_player_previous"

    .line 273
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x30

    .line 274
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mPreviousPendingIntent:Landroid/app/PendingIntent;

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sound_cloud_player_clear"

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x40

    .line 280
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mClearPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public notify(Landroid/app/Service;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->initNotificationBuilder(Landroid/content/Context;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->createNotificationChannel(Landroid/content/Context;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getUsername()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090177

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090175

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f090173

    if-eqz p3, :cond_1

    .line 184
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    const v1, 0x7f0800cc

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 188
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationView:Landroid/widget/RemoteViews;

    const v1, 0x7f0800c9

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 197
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationExpandedView:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    const/16 p3, 0x42

    .line 203
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 207
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getId()J

    move-result-wide v0

    .line 208
    iget-wide v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTrackId:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget-wide v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTrackId:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    .line 210
    :cond_2
    new-instance p1, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;)V

    .line 231
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager$2;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Lcom/squareup/picasso/Target;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    iput-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mTrackId:J

    :cond_3
    return-void
.end method

.method public setNotificationConfig(Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->mNotificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    return-void
.end method
