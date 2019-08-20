.class final Lcom/google/android/gms/internal/measurement/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajp:Z

.field private final synthetic zzajq:Lcom/google/android/gms/internal/measurement/zzfp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfp;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzajq:Lcom/google/android/gms/internal/measurement/zzfp;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzajp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzajq:Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfp;->zza(Lcom/google/android/gms/internal/measurement/zzfp;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzajp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzi(Z)V

    return-void
.end method
