.class final Lcom/google/android/gms/internal/measurement/zzjm;
.super Lcom/google/android/gms/internal/measurement/zzem;


# instance fields
.field private final synthetic zzaqr:Lcom/google/android/gms/internal/measurement/zzjk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjk;Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzaqr:Lcom/google/android/gms/internal/measurement/zzjk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzem;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjm;->zzaqr:Lcom/google/android/gms/internal/measurement/zzjk;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zza(Lcom/google/android/gms/internal/measurement/zzjk;)V

    return-void
.end method
