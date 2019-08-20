.class Lcom/onesignal/OneSignalRemoteParams$Params;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalRemoteParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# instance fields
.field awl:Lorg/json/JSONObject;

.field enterprise:Z

.field firebaseAnalytics:Z

.field googleProjectNumber:Ljava/lang/String;

.field notificationChannels:Lorg/json/JSONArray;

.field restoreTTLFilter:Z

.field useEmailAuth:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
