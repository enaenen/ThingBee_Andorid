.class final Lcom/onesignal/OneSignal$4;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/OneSignalRemoteParams$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->makeAndroidParamsRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/OneSignalRemoteParams$Params;)V
    .locals 3

    .line 840
    sput-object p1, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    .line 841
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 842
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->googleProjectNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$1302(Ljava/lang/String;)Ljava/lang/String;

    .line 844
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_FIREBASE_TRACKING_ENABLED"

    sget-object v2, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v2, v2, Lcom/onesignal/OneSignalRemoteParams$Params;->firebaseAnalytics:Z

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 849
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_RESTORE_TTL_FILTER"

    sget-object v2, Lcom/onesignal/OneSignal;->remoteParams:Lcom/onesignal/OneSignalRemoteParams$Params;

    iget-boolean v2, v2, Lcom/onesignal/OneSignalRemoteParams$Params;->restoreTTLFilter:Z

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveBool(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 855
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/onesignal/OneSignalRemoteParams$Params;->notificationChannels:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/onesignal/NotificationChannelManager;->processChannelList(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 859
    invoke-static {}, Lcom/onesignal/OneSignal;->access$1400()V

    return-void
.end method
