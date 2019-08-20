.class final Lcom/google/android/gms/internal/measurement/zzhs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaop:Lcom/google/android/gms/internal/measurement/zzhm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhs;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzab()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zzch()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzacr:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgi()Lcom/google/android/gms/internal/measurement/zzeh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeh;->zzhi()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzh(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzil;->resetAnalyticsData()V

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzaon:Z

    return-void
.end method
