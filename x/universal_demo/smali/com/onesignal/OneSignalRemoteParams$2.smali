.class final Lcom/onesignal/OneSignalRemoteParams$2;
.super Lcom/onesignal/OneSignalRemoteParams$Params;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$responseJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 82
    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRemoteParams$Params;-><init>()V

    .line 83
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "enterp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->enterprise:Z

    .line 84
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "use_email_auth"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->useEmailAuth:Z

    .line 85
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "awl_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->awl:Lorg/json/JSONObject;

    .line 86
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "chnl_lst"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->notificationChannels:Lorg/json/JSONArray;

    .line 87
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "fba"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->firebaseAnalytics:Z

    .line 88
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "restore_ttl_filter"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->restoreTTLFilter:Z

    .line 89
    iget-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    const-string v0, "android_sender_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->googleProjectNumber:Ljava/lang/String;

    return-void
.end method
