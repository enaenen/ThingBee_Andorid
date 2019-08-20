.class final Lcom/google/android/gms/internal/measurement/zzid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final synthetic zzaov:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhm;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzaov:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgh()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfr;->zzaki:Lcom/google/android/gms/internal/measurement/zzfu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzaov:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfu;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zziq()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Session timeout duration set"

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzid;->zzaov:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
