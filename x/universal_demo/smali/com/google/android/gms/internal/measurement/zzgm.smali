.class final Lcom/google/android/gms/internal/measurement/zzgm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzano:Lcom/google/android/gms/internal/measurement/zzhl;

.field private final synthetic zzanp:Lcom/google/android/gms/internal/measurement/zzgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzhl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzanp:Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzano:Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzanp:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzano:Lcom/google/android/gms/internal/measurement/zzhl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zza(Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzhl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgm;->zzanp:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->start()V

    return-void
.end method
