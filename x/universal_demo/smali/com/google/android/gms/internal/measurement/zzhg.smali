.class final Lcom/google/android/gms/internal/measurement/zzhg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/measurement/zzju;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzanq:Lcom/google/android/gms/internal/measurement/zzec;

.field private final synthetic zzany:Lcom/google/android/gms/internal/measurement/zzgq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgq;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzka()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzany:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Lcom/google/android/gms/internal/measurement/zzgq;)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzga()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhg;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzec;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzei;->zzaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
