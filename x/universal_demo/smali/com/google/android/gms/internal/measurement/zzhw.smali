.class final Lcom/google/android/gms/internal/measurement/zzhw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaoa:Ljava/lang/String;

.field private final synthetic zzaob:Ljava/lang/String;

.field private final synthetic zzaoc:Ljava/lang/String;

.field private final synthetic zzaoo:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final synthetic zzaos:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaoo:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaoc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaoa:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaob:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhm;->zzacr:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaoo:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaoc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaoa:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaob:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzaos:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
