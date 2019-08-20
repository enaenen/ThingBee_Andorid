.class Lcom/onesignal/UserStatePushSynchronizer$1;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "UserStatePushSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/UserStatePushSynchronizer;->getTags(Z)Lcom/onesignal/UserStateSynchronizer$GetTagsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/UserStatePushSynchronizer;


# direct methods
.method constructor <init>(Lcom/onesignal/UserStatePushSynchronizer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onSuccess(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Lcom/onesignal/UserStatePushSynchronizer;->access$002(Z)Z

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "tags"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object p1, p1, Lcom/onesignal/UserStatePushSynchronizer;->syncLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    .line 35
    invoke-virtual {v3}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v3

    iget-object v3, v3, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v4, "tags"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/onesignal/UserStatePushSynchronizer;->generateJsonDiff(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;)Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    iget-object v2, v2, Lcom/onesignal/UserState;->syncValues:Lorg/json/JSONObject;

    const-string v3, "tags"

    const-string v4, "tags"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    iget-object v2, v2, Lcom/onesignal/UserStatePushSynchronizer;->currentUserState:Lcom/onesignal/UserState;

    invoke-virtual {v2}, Lcom/onesignal/UserState;->persistState()V

    .line 43
    iget-object v2, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v2}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/onesignal/UserState;->mergeTags(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 44
    iget-object v0, p0, Lcom/onesignal/UserStatePushSynchronizer$1;->this$0:Lcom/onesignal/UserStatePushSynchronizer;

    invoke-virtual {v0}, Lcom/onesignal/UserStatePushSynchronizer;->getToSyncUserState()Lcom/onesignal/UserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/UserState;->persistState()V

    .line 45
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
