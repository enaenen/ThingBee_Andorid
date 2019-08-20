.class public Lcom/onesignal/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 40
    new-instance v0, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignalSyncServiceUtils$LollipopSyncRunnable;-><init>(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-static {p0, v0}, Lcom/onesignal/OneSignalSyncServiceUtils;->doBackgroundSync(Landroid/content/Context;Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 49
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->stopSyncBgThread()Z

    move-result p1

    return p1
.end method
