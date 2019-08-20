.class Lcom/sherdle/universal/App$NotificationHandler;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/onesignal/OneSignal$NotificationOpenedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/App;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/App;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sherdle/universal/App$NotificationHandler;->this$0:Lcom/sherdle/universal/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/App;Lcom/sherdle/universal/App$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/sherdle/universal/App$NotificationHandler;-><init>(Lcom/sherdle/universal/App;)V

    return-void
.end method


# virtual methods
.method public notificationOpened(Lcom/onesignal/OSNotificationOpenResult;)V
    .locals 8

    .line 45
    :try_start_0
    iget-object v0, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v0, v0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v0, v0, Lcom/onesignal/OSNotificationPayload;->additionalData:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "url"

    .line 47
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-object v0, v0, Lcom/onesignal/OSNotification;->payload:Lcom/onesignal/OSNotificationPayload;

    iget-object v3, v0, Lcom/onesignal/OSNotificationPayload;->launchURL:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p1, Lcom/onesignal/OSNotificationOpenResult;->notification:Lcom/onesignal/OSNotification;

    iget-boolean p1, p1, Lcom/onesignal/OSNotification;->isAppInFocus:Z

    if-nez p1, :cond_4

    .line 58
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/App$NotificationHandler;->this$0:Lcom/sherdle/universal/App;

    const-class v1, Lcom/sherdle/universal/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10020000

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/App$NotificationHandler;->this$0:Lcom/sherdle/universal/App;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/App;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/App$NotificationHandler;->this$0:Lcom/sherdle/universal/App;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x10020000

    invoke-static/range {v0 .. v5}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;I)V

    goto :goto_1

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/sherdle/universal/App$NotificationHandler;->this$0:Lcom/sherdle/universal/App;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x10020000

    invoke-static/range {v2 .. v7}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
