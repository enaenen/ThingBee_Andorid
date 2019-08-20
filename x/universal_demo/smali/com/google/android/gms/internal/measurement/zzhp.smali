.class final Lcom/google/android/gms/internal/measurement/zzhp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaoo:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final synthetic zzaos:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzaoo:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzaos:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzaoo:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzaos:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
