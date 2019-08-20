.class public Lcom/sherdle/universal/providers/radio/player/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# static fields
.field private static instance:Lcom/sherdle/universal/providers/radio/player/RadioManager;

.field private static service:Lcom/sherdle/universal/providers/radio/player/RadioService;


# instance fields
.field private serviceBound:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/RadioManager$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/player/RadioManager$1;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioManager;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceBound:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/radio/player/RadioService;)Lcom/sherdle/universal/providers/radio/player/RadioService;
    .locals 0

    .line 12
    sput-object p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/radio/player/RadioManager;Z)Z
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceBound:Z

    return p1
.end method

.method public static getService()Lcom/sherdle/universal/providers/radio/player/RadioService;
    .locals 1

    .line 33
    sget-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    return-object v0
.end method

.method public static with()Lcom/sherdle/universal/providers/radio/player/RadioManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->instance:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/radio/player/RadioManager;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->instance:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->instance:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/content/Context;)V
    .locals 3

    .line 53
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceBound:Z

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    sget-object p1, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    if-eqz p1, :cond_0

    .line 60
    sget-object p1, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->onEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 47
    sget-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public playOrPause(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 39
    sget-object p1, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stop()V

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->playOrPause(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unbind(Landroid/content/Context;)V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceBound:Z

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->service:Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stop()V

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/radio/player/RadioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioManager;->serviceBound:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
