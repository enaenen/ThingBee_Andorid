.class final Lcom/google/android/gms/internal/measurement/zzfz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zzakx:Lcom/google/android/gms/internal/measurement/zzfx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzfx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfx;Lcom/google/android/gms/internal/measurement/zzfy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfz;-><init>(Lcom/google/android/gms/internal/measurement/zzfx;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzs;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzr;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzakv:Lcom/google/android/gms/internal/measurement/zzr;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzakv:Lcom/google/android/gms/internal/measurement/zzr;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Install Referrer Service connected"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/zzga;-><init>(Lcom/google/android/gms/internal/measurement/zzfz;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgg;->zzc(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/zzfx;->zzakv:Lcom/google/android/gms/internal/measurement/zzr;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzfx;->zza(Lcom/google/android/gms/internal/measurement/zzfx;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void
.end method
