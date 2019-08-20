.class public Lcom/onesignal/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"


# static fields
.field private static final REQUEST_LOCATION:I = 0x2

.field private static activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

.field static answered:Z

.field static waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private requestPermission()V
    .locals 3

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    return-void

    .line 78
    :cond_0
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    .line 80
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/onesignal/LocationGMS;->requestPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/onesignal/AndroidSupportV4Compat$ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method static startPrompt()V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->waiting:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/onesignal/PermissionsActivity$1;

    invoke-direct {v0}, Lcom/onesignal/PermissionsActivity$1;-><init>()V

    sput-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    .line 116
    sget-object v0, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleHandler;->setActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppContext(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const-string v0, "android:hasCurrentPermissionsRequest"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 57
    sput-boolean p1, Lcom/onesignal/PermissionsActivity;->waiting:Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    sget-boolean p1, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz p1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/onesignal/PermissionsActivity;->requestPermission()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p2, 0x1

    .line 86
    sput-boolean p2, Lcom/onesignal/PermissionsActivity;->answered:Z

    const/4 p2, 0x0

    .line 87
    sput-boolean p2, Lcom/onesignal/PermissionsActivity;->waiting:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 90
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 91
    invoke-static {}, Lcom/onesignal/LocationGMS;->startGetLocation()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    .line 96
    :cond_1
    :goto_0
    sget-object p1, Lcom/onesignal/PermissionsActivity;->activityAvailableListener:Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;

    invoke-static {p1}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/onesignal/PermissionsActivity;->finish()V

    return-void
.end method
