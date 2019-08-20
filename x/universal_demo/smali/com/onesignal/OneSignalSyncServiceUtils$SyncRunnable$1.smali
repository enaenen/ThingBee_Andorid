.class Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;
.super Ljava/lang/Object;
.source "OneSignalSyncServiceUtils.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 235
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    :cond_0
    const/4 p1, 0x1

    .line 239
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->syncUserState(Z)V

    .line 240
    invoke-static {}, Lcom/onesignal/OneSignalSyncServiceUtils;->syncOnFocusTime()V

    .line 241
    iget-object p1, p0, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable$1;->this$0:Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;

    invoke-virtual {p1}, Lcom/onesignal/OneSignalSyncServiceUtils$SyncRunnable;->stopSync()V

    return-void
.end method

.method public getType()Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    .locals 1

    .line 229
    sget-object v0, Lcom/onesignal/LocationGMS$CALLBACK_TYPE;->SYNC_SERVICE:Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    return-object v0
.end method
