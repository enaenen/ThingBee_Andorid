.class final Lcom/google/android/gms/internal/measurement/zzha;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanq:Lcom/google/android/gms/internal/measurement/zzec;

.field private final synthetic zzany:Lcom/google/android/gms/internal/measurement/zzgq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgq;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzka()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzha;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzd(Lcom/google/android/gms/internal/measurement/zzec;)V

    return-void
.end method
