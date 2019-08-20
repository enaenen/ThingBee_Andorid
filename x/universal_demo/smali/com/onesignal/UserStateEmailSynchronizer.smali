.class Lcom/onesignal/UserStateEmailSynchronizer;
.super Lcom/onesignal/UserStateSynchronizer;
.source "UserStateEmailSynchronizer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/onesignal/UserStateSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected addOnSessionOrCreateExtras(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "device_type"

    const/16 v1, 0xb

    .line 107
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "device_player_id"

    .line 108
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected fireEventsForUpdateFailure(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "identifier"

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateFailure()V

    :cond_0
    return-void
.end method

.method protected getId()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSubscribed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserSubscribePreference()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method logoutEmail()V
    .locals 2

    const-string v0, ""

    .line 116
    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 119
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "email_auth_hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "device_player_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/onesignal/UserStateEmailSynchronizer;->toSyncUserState:Lcom/onesignal/UserState;

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 124
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionSubscriptionState()Lcom/onesignal/OSPermissionSubscriptionState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OSPermissionSubscriptionState;->emailSubscriptionStatus:Lcom/onesignal/OSEmailSubscriptionState;

    invoke-virtual {v0}, Lcom/onesignal/OSEmailSubscriptionState;->clearEmailAndId()V

    return-void
.end method

.method protected newUserState(Ljava/lang/String;Z)Lcom/onesignal/UserState;
    .locals 1

    .line 10
    new-instance v0, Lcom/onesignal/UserStateEmail;

    invoke-direct {v0, p1, p2}, Lcom/onesignal/UserStateEmail;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSuccessfulSync(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "identifier"

    .line 135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    :cond_0
    return-void
.end method

.method refresh()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V

    return-void
.end method

.method protected scheduleSyncToServer()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 50
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/UserStateEmailSynchronizer;->getNetworkHandlerThread(Ljava/lang/Integer;)Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserStateSynchronizer$NetworkHandlerThread;->runNewJobDelayed()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 57
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->getUserStateForModification()Lcom/onesignal/UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v1, "identifier"

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "email_auth_hash"

    .line 60
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 62
    invoke-static {}, Lcom/onesignal/OneSignal;->fireEmailUpdateSuccess()V

    return-void

    :cond_2
    const-string v1, "identifier"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    .line 72
    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "identifier"

    .line 73
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_4

    const-string v4, "email_auth_hash"

    .line 76
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-nez p2, :cond_5

    if-eqz v1, :cond_5

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, ""

    .line 80
    invoke-static {p1}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->resetCurrentState()V

    .line 82
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->setNewSession()V

    .line 86
    :cond_5
    invoke-virtual {p0, v0, v3, v0, v2}, Lcom/onesignal/UserStateEmailSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {p0}, Lcom/onesignal/UserStateEmailSynchronizer;->scheduleSyncToServer()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setPermission(Z)V
    .locals 0

    return-void
.end method

.method setSubscription(Z)V
    .locals 0

    return-void
.end method

.method updateIdDependents(Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/onesignal/OneSignal;->updateEmailIdDependents(Ljava/lang/String;)V

    return-void
.end method

.method updateState(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
