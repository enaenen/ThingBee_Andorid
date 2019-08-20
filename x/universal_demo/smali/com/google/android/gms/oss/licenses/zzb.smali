.class final Lcom/google/android/gms/oss/licenses/zzb;
.super Landroid/support/v4/content/AsyncTaskLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/oss_licenses/zza;",
        ">;>;"
    }
.end annotation


# instance fields
.field private zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final zza(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/oss/licenses/zzb;->zzd:Ljava/util/List;

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/gms/oss/licenses/zzb;->zza(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/zzb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/oss_licenses/zzc;->zza(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/oss/licenses/zzb;->zzd:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/oss/licenses/zzb;->zzd:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/gms/oss/licenses/zzb;->zza(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/zzb;->forceLoad()V

    return-void
.end method

.method protected final onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/zzb;->cancelLoad()Z

    return-void
.end method
