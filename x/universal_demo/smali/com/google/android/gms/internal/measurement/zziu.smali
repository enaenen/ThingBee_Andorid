.class final Lcom/google/android/gms/internal/measurement/zziu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanq:Lcom/google/android/gms/internal/measurement/zzec;

.field private final synthetic zzapy:Lcom/google/android/gms/internal/measurement/zzil;

.field private final synthetic zzaqb:Z

.field private final synthetic zzaqc:Z

.field private final synthetic zzaqd:Lcom/google/android/gms/internal/measurement/zzef;

.field private final synthetic zzaqe:Lcom/google/android/gms/internal/measurement/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzil;ZZLcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzec;Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqd:Lcom/google/android/gms/internal/measurement/zzef;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqe:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzd(Lcom/google/android/gms/internal/measurement/zzil;)Lcom/google/android/gms/internal/measurement/zzey;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqb:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqc:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqd:Lcom/google/android/gms/internal/measurement/zzef;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzey;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqe:Lcom/google/android/gms/internal/measurement/zzef;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzef;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqd:Lcom/google/android/gms/internal/measurement/zzef;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Lcom/google/android/gms/internal/measurement/zzef;Lcom/google/android/gms/internal/measurement/zzec;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaqd:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzey;->zzb(Lcom/google/android/gms/internal/measurement/zzef;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zze(Lcom/google/android/gms/internal/measurement/zzil;)V

    return-void
.end method
