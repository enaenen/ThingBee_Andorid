.class Lcom/onesignal/OneSignalStateSynchronizer;
.super Ljava/lang/Object;
.source "OneSignalStateSynchronizer.java"


# static fields
.field private static userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

.field private static userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearLocation()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->clearLocation()V

    .line 62
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->clearLocation()V

    return-void
.end method

.method static getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;
    .locals 1

    .line 46
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/onesignal/UserStateEmailSynchronizer;

    invoke-direct {v0}, Lcom/onesignal/UserStateEmailSynchronizer;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

    .line 48
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStateEmailSynchronizer:Lcom/onesignal/UserStateEmailSynchronizer;

    return-object v0
.end method

.method static getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;
    .locals 1

    .line 40
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {v0}, Lcom/onesignal/UserStatePushSynchronizer;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;

    .line 42
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalStateSynchronizer;->userStatePushSynchronizer:Lcom/onesignal/UserStatePushSynchronizer;

    return-object v0
.end method

.method static getRegistrationId()Ljava/lang/String;
    .locals 1

    .line 125
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSubscribed()Z
    .locals 1

    .line 121
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSubscribed()Z

    move-result v0

    return v0
.end method

.method static getSyncAsNewSession()Z
    .locals 1

    .line 161
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->getSyncAsNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 1

    .line 129
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;

    move-result-object p0

    return-object p0
.end method

.method static getUserSubscribePreference()Z
    .locals 1

    .line 108
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getUserSubscribePreference()Z

    move-result v0

    return v0
.end method

.method static initUserState()V
    .locals 1

    .line 66
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->initUserState()V

    .line 67
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->initUserState()V

    return-void
.end method

.method static logoutEmail()V
    .locals 1

    .line 170
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->logoutEmail()V

    .line 171
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->logoutEmail()V

    return-void
.end method

.method static persist()Z
    .locals 4

    .line 52
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->persist()Z

    move-result v0

    .line 53
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->persist()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 55
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method static readyToUpdate(Z)V
    .locals 1

    .line 183
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->readyToUpdate(Z)V

    .line 184
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->readyToUpdate(Z)V

    return-void
.end method

.method static refreshEmailState()V
    .locals 1

    .line 152
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->refresh()V

    return-void
.end method

.method static resetCurrentState()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->resetCurrentState()V

    .line 134
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    const-wide/16 v0, -0xe4c

    .line 139
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    return-void
.end method

.method static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tags"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 78
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStatePushSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 79
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStateEmailSynchronizer;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    new-instance v0, Lcom/onesignal/OneSignal$SendTagsError;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error attempting to serialize your tags into JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OneSignal$SendTagsError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$SendTagsError;)V

    .line 82
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStatePushSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/UserStateEmailSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setExternalUserId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setExternalUserId(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setExternalUserId(Ljava/lang/String;)V

    return-void
.end method

.method static setNewSession()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->setNewSession()V

    .line 157
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    return-void
.end method

.method static setNewSessionForEmail()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    return-void
.end method

.method static setPermission(Z)V
    .locals 1

    .line 112
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setPermission(Z)V

    return-void
.end method

.method static setSubscription(Z)V
    .locals 1

    .line 104
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->setSubscription(Z)V

    return-void
.end method

.method static syncHashedEmail(Ljava/lang/String;)V
    .locals 3

    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "em_m"

    const-string v2, "MD5"

    .line 89
    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "em_s"

    const-string v2, "SHA-1"

    .line 90
    invoke-static {p0, v2}, Lcom/onesignal/OSUtils;->hexDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStatePushSynchronizer;->syncHashedEmail(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static syncUserState(Z)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->syncUserState(Z)V

    .line 72
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->syncUserState(Z)V

    return-void
.end method

.method static updateDeviceInfo(Lorg/json/JSONObject;)V
    .locals 1

    .line 143
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    .line 144
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method static updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1

    .line 116
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    .line 117
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStateEmailSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    return-void
.end method

.method static updatePushState(Lorg/json/JSONObject;)V
    .locals 1

    .line 148
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getPushStateSynchronizer()Lcom/onesignal/UserStatePushSynchronizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/UserStatePushSynchronizer;->updateState(Lorg/json/JSONObject;)V

    return-void
.end method
