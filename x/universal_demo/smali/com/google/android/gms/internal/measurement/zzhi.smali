.class final Lcom/google/android/gms/internal/measurement/zzhi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzany:Lcom/google/android/gms/internal/measurement/zzgq;

.field private final synthetic zzaoc:Ljava/lang/String;

.field private final synthetic zzaof:Ljava/lang/String;

.field private final synthetic zzaog:Ljava/lang/String;

.field private final synthetic zzaoh:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaof:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaoc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaog:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaoh:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaof:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfy()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaoc:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzig;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaog:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzig;->zzug:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaof:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzig;->zzapa:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaoh:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/measurement/zzig;->zzapb:J

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfy()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhi;->zzaoc:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void
.end method
