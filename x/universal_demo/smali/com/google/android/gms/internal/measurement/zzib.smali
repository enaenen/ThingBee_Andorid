.class final Lcom/google/android/gms/internal/measurement/zzib;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

.field private final synthetic zzaou:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhm;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzaou:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzaop:Lcom/google/android/gms/internal/measurement/zzhm;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzaou:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhm;->zza(Lcom/google/android/gms/internal/measurement/zzhm;Z)V

    return-void
.end method
