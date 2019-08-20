.class final Lcom/google/android/gms/internal/measurement/zzgu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzany:Lcom/google/android/gms/internal/measurement/zzgq;

.field private final synthetic zzanz:Lcom/google/android/gms/internal/measurement/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgq;Lcom/google/android/gms/internal/measurement/zzef;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzanz:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzka()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzanz:Lcom/google/android/gms/internal/measurement/zzef;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zze(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-void
.end method
