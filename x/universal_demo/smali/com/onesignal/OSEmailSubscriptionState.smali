.class public Lcom/onesignal/OSEmailSubscriptionState;
.super Ljava/lang/Object;
.source "OSEmailSubscriptionState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private emailAddress:Ljava/lang/String;

.field private emailUserId:Ljava/lang/String;

.field observable:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Ljava/lang/Object;",
            "Lcom/onesignal/OSEmailSubscriptionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/onesignal/OSObservable;

    const-string v1, "changed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    if-eqz p1, :cond_0

    .line 42
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "PREFS_ONESIGNAL_EMAIL_ID_LAST"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    .line 44
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v0, "PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST"

    invoke-static {p1, v0, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getEmailStateSynchronizer()Lcom/onesignal/UserStateEmailSynchronizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/UserStateEmailSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method clearEmailAndId()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1

    .line 104
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method compare(Lcom/onesignal/OSEmailSubscriptionState;)Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p1, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    iget-object v1, p1, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string p1, ""

    .line 99
    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p1, 0x1

    :goto_5
    return p1
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailUserId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribed()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method persistAsFrom()V
    .locals 3

    .line 91
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_ONESIGNAL_EMAIL_ID_LAST"

    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "PREFS_ONESIGNAL_EMAIL_ADDRESS_LAST"

    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setEmailAddress(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 77
    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setEmailUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 66
    iput-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/onesignal/OSEmailSubscriptionState;->observable:Lcom/onesignal/OSObservable;

    invoke-virtual {p1, p0}, Lcom/onesignal/OSObservable;->notifyChange(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "emailUserId"

    .line 114
    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "emailUserId"

    .line 116
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "emailAddress"

    .line 119
    iget-object v2, p0, Lcom/onesignal/OSEmailSubscriptionState;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string v1, "emailAddress"

    .line 121
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v1, "subscribed"

    .line 123
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->getSubscribed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
