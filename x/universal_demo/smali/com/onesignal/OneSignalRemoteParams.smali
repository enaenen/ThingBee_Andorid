.class Lcom/onesignal/OneSignalRemoteParams;
.super Ljava/lang/Object;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignalRemoteParams$CallBack;,
        Lcom/onesignal/OneSignalRemoteParams$Params;
    }
.end annotation


# static fields
.field private static final INCREASE_BETWEEN_RETRIES:I = 0x2710

.field private static final MAX_WAIT_BETWEEN_RETRIES:I = 0x15f90

.field private static final MIN_WAIT_BETWEEN_RETRIES:I = 0x7530

.field private static androidParamsReties:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 11
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsReties:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .line 11
    sget v0, Lcom/onesignal/OneSignalRemoteParams;->androidParamsReties:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/onesignal/OneSignalRemoteParams;->androidParamsReties:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    return-void
.end method

.method static makeAndroidParamsRequest(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 3
    .param p0    # Lcom/onesignal/OneSignalRemoteParams$CallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignalRemoteParams$1;-><init>(Lcom/onesignal/OneSignalRemoteParams$CallBack;)V

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apps/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/android_params.js"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?player_id="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 67
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Starting request to get Android parameters."

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const-string v1, "CACHE_KEY_REMOTE_PARAMS"

    .line 68
    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignalRestClient;->get(Ljava/lang/String;Lcom/onesignal/OneSignalRestClient$ResponseHandler;Ljava/lang/String;)V

    return-void
.end method

.method private static processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$CallBack;)V
    .locals 2
    .param p1    # Lcom/onesignal/OneSignalRemoteParams$CallBack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    new-instance p0, Lcom/onesignal/OneSignalRemoteParams$2;

    invoke-direct {p0, v0}, Lcom/onesignal/OneSignalRemoteParams$2;-><init>(Lorg/json/JSONObject;)V

    .line 92
    invoke-interface {p1, p0}, Lcom/onesignal/OneSignalRemoteParams$CallBack;->complete(Lcom/onesignal/OneSignalRemoteParams$Params;)V

    return-void

    :catch_0
    move-exception p1

    .line 77
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Error parsing android_params!: "

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response that errored from android_params!: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method
