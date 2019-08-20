.class Lcom/onesignal/OneSignalSyncServiceUtils;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalSyncServiceUtils$LegacySyncRunnable;,
        Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;,
        Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;
    }
.end annotation


# static fields
.field private static final SYNC_AFTER_BG_DELAY_MS:I = 0x1d4c0

.field private static final SYNC_TASK_ID:I = 0x7b7e1b66

.field private static nextScheduledSyncTime:Ljava/lang/Long;

.field private static runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static syncBgThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Long;
    .locals 1

    .line 48
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 48
    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    return-object p0
.end method

.method static cancelSyncTask(Landroid/content/Context;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 68
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    .line 69
    invoke-static {p0}, Lcom/onesignal/LocationGMS;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    monitor-exit v0

    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->useJob()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "jobscheduler"

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const v1, 0x7b7e1b66

    .line 75
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_1
    const-string v1, "alarm"

    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 78
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 80
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V
    .locals 1

    .line 189
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    .line 190
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "OS_SYNCSRV_BG_SYNC"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    .line 191
    sget-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static hasBootPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 124
    invoke-static {p0, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static internalSyncOnFocusTime()V
    .locals 5

    .line 180
    invoke-static {}, Lcom/onesignal/OneSignal;->GetUnsentActiveTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 184
    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->sendOnFocus(JZ)V

    return-void
.end method

.method static scheduleLocationUpdateTask(Landroid/content/Context;J)V
    .locals 3

    .line 57
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleLocationUpdateTask:delayMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 58
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;J)V

    return-void
.end method

.method private static scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V
    .locals 5

    .line 160
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleServiceSyncTask:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 162
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 163
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v3, v1, p1

    add-long v1, v3, p1

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private static scheduleSyncServiceAsJob(Landroid/content/Context;J)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 132
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleSyncServiceAsJob:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/onesignal/SyncJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7b7e1b66

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 140
    invoke-virtual {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 141
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 143
    invoke-static {p0}, Lcom/onesignal/OneSignalSyncServiceUtils;->hasBootPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {v0, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    :cond_0
    const-string p1, "jobscheduler"

    .line 146
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 148
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    .line 149
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scheduleSyncServiceAsJob:result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "scheduleSyncServiceAsJob called JobScheduler.jobScheduler which triggered an internal null Android error. Skipping job."

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static scheduleSyncTask(Landroid/content/Context;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "scheduleSyncTask:SYNC_AFTER_BG_DELAY_MS: 120000"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-wide/32 v0, 0x1d4c0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncTask(Landroid/content/Context;J)V

    return-void
.end method

.method private static scheduleSyncTask(Landroid/content/Context;J)V
    .locals 6

    .line 107
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    add-long v3, v1, p1

    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 110
    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x1388

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    move-wide p1, v1

    .line 115
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->useJob()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncServiceAsJob(Landroid/content/Context;J)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalSyncServiceUtils;->scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V

    .line 119
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 p0, 0x0

    add-long v3, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/onesignal/OneSignalSyncServiceUtils;->nextScheduledSyncTime:Ljava/lang/Long;

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static stopSyncBgThread()Z
    .locals 2

    .line 195
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 198
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 201
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x1

    return v0
.end method

.method static syncOnFocusTime()V
    .locals 3

    .line 170
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 173
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->internalSyncOnFocusTime()V

    .line 175
    sget-object v1, Lcom/onesignal/OneSignalSyncServiceUtils;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onesignal/SyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7b7e1b66

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static useJob()Z
    .locals 2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
