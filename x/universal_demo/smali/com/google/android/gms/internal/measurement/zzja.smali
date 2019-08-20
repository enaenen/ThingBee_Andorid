.class final Lcom/google/android/gms/internal/measurement/zzja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaqh:Lcom/google/android/gms/internal/measurement/zzey;

.field private final synthetic zzaqi:Lcom/google/android/gms/internal/measurement/zziz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziz;Lcom/google/android/gms/internal/measurement/zzey;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqh:Lcom/google/android/gms/internal/measurement/zzey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Lcom/google/android/gms/internal/measurement/zziz;Z)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zziz;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzil;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zziz;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zziz;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzaqh:Lcom/google/android/gms/internal/measurement/zzey;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzey;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
