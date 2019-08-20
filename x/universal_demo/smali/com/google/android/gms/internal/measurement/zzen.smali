.class final Lcom/google/android/gms/internal/measurement/zzen;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

.field private final synthetic zzafj:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafj:Lcom/google/android/gms/internal/measurement/zzem;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgg;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafj:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Lcom/google/android/gms/internal/measurement/zzem;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzgf()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzgg;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafj:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzef()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafj:Lcom/google/android/gms/internal/measurement/zzem;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzem;->zza(Lcom/google/android/gms/internal/measurement/zzem;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafj:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzem;->zzb(Lcom/google/android/gms/internal/measurement/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen;->zzafj:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->run()V

    :cond_1
    return-void
.end method
