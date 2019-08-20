.class final Lcom/onesignal/OneSignal$6;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1106
    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "sending on_focus Failed"

    .line 1109
    invoke-static {v0, p1, p3, p2}, Lcom/onesignal/OneSignal;->access$1500(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1114
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->access$1600(J)V

    return-void
.end method
