.class public Lcom/onesignal/GcmBroadcastReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# static fields
.field private static final GCM_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final GCM_TYPE:Ljava/lang/String; = "gcm"

.field private static final MESSAGE_TYPE_EXTRA_KEY:Ljava/lang/String; = "message_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isGcmMessage(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    .line 55
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "message_type"

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "gcm"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private static processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    .locals 1

    .line 122
    invoke-static {p1}, Lcom/onesignal/GcmBroadcastReceiver;->isGcmMessage(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    invoke-static {p0, p2}, Lcom/onesignal/NotificationBundleProcessor;->processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->processed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 131
    :cond_1
    invoke-static {p0, p2}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1
.end method

.method private setAbort()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->abortBroadcast()V

    const/4 v0, -0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    :cond_0
    return-void
.end method

.method private static setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;
    .locals 4

    const-string v0, "json_payload"

    .line 194
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/onesignal/BundleCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "timestamp"

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/onesignal/BundleCompat;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method private setSuccessfulResultCode()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/onesignal/GcmBroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setResultCode(I)V

    :cond_0
    return-void
.end method

.method private static startGCMService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 138
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->hasRemoteResource(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object p1

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, p1, v0}, Lcom/onesignal/NotificationBundleProcessor;->ProcessFromGCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;Lcom/onesignal/NotificationExtenderService$OverrideSettings;)V

    return-void

    :cond_0
    const-string v0, "pri"

    const-string v1, "0"

    .line 144
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 146
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithJobScheduler(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 149
    :cond_2
    :try_start_0
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithWakefulService(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 154
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startGCMServiceWithJobScheduler(Landroid/content/Context;Landroid/os/Bundle;)V

    :goto_1
    return-void

    .line 156
    :cond_3
    throw v0
.end method

.method private static startGCMServiceWithJobScheduler(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 163
    invoke-static {}, Lcom/onesignal/BundleCompatFactory;->getInstance()Lcom/onesignal/BundleCompat;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object p1

    .line 165
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onesignal/GcmIntentJobService;

    .line 166
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 168
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-direct {v2, v1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v0, 0x0

    .line 169
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 170
    invoke-interface {p1}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    const-string v0, "jobscheduler"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 178
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method private static startGCMServiceWithWakefulService(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 182
    new-instance v0, Landroid/content/ComponentName;

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/onesignal/GcmIntentService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/onesignal/BundleCompatBundle;

    invoke-direct {v1}, Lcom/onesignal/BundleCompatBundle;-><init>()V

    invoke-static {p1, v1}, Lcom/onesignal/GcmBroadcastReceiver;->setCompatBundleForServer(Landroid/os/Bundle;Lcom/onesignal/BundleCompat;)Lcom/onesignal/BundleCompat;

    move-result-object p1

    .line 186
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 188
    invoke-interface {p1}, Lcom/onesignal/BundleCompat;->getBundle()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Lcom/onesignal/GcmBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "google.com/iid"

    const-string v2, "from"

    .line 67
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 72
    invoke-static {p1, p2, v0}, Lcom/onesignal/GcmBroadcastReceiver;->processOrderBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    move-result-object p2

    if-nez p2, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setSuccessfulResultCode()V

    return-void

    .line 83
    :cond_1
    iget-boolean v0, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isDup:Z

    if-nez v0, :cond_4

    iget-boolean v0, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->hasExtenderService:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    iget-boolean p2, p2, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->isOneSignalPayload:Z

    if-eqz p2, :cond_3

    .line 93
    invoke-static {p1}, Lcom/onesignal/OneSignal;->getFilterOtherGCMReceivers(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    return-void

    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setSuccessfulResultCode()V

    return-void

    .line 85
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/onesignal/GcmBroadcastReceiver;->setAbort()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method
