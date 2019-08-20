.class final Lcom/google/android/gms/internal/measurement/zzin;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanq:Lcom/google/android/gms/internal/measurement/zzec;

.field private final synthetic zzapy:Lcom/google/android/gms/internal/measurement/zzil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzd(Lcom/google/android/gms/internal/measurement/zzil;)Lcom/google/android/gms/internal/measurement/zzey;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Failed to reset data on the service; null service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzey;->zzd(Lcom/google/android/gms/internal/measurement/zzec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to reset data on the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzin;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zze(Lcom/google/android/gms/internal/measurement/zzil;)V

    return-void
.end method
