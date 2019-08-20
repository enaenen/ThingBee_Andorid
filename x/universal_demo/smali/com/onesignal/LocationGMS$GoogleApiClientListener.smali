.class Lcom/onesignal/LocationGMS$GoogleApiClientListener;
.super Ljava/lang/Object;
.source "LocationGMS.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/LocationGMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleApiClientListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/LocationGMS$1;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/onesignal/LocationGMS$GoogleApiClientListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .line 311
    sget-object p1, Lcom/onesignal/LocationGMS;->syncLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 312
    :try_start_0
    sput-boolean v0, Lcom/onesignal/PermissionsActivity;->answered:Z

    .line 314
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$300()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$400()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/LocationGMS$FusedLocationApiWrapper;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/LocationGMS;->access$302(Landroid/location/Location;)Landroid/location/Location;

    .line 316
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$300()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/onesignal/LocationGMS;->access$300()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/LocationGMS;->access$500(Landroid/location/Location;)V

    .line 320
    :cond_0
    new-instance v0, Lcom/onesignal/LocationGMS$LocationUpdateListener;

    invoke-static {}, Lcom/onesignal/LocationGMS;->access$400()Lcom/onesignal/GoogleApiClientCompatProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/GoogleApiClientCompatProxy;->realInstance()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onesignal/LocationGMS$LocationUpdateListener;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    sput-object v0, Lcom/onesignal/LocationGMS;->locationUpdateListener:Lcom/onesignal/LocationGMS$LocationUpdateListener;

    .line 321
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 331
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .line 326
    invoke-static {}, Lcom/onesignal/LocationGMS;->fireFailedComplete()V

    return-void
.end method
