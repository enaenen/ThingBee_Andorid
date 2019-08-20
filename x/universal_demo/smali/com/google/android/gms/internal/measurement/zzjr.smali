.class final Lcom/google/android/gms/internal/measurement/zzjr;
.super Lcom/google/android/gms/internal/measurement/zzem;


# instance fields
.field private final synthetic zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

.field private final synthetic zzaqt:Lcom/google/android/gms/internal/measurement/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjq;Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zzaqt:Lcom/google/android/gms/internal/measurement/zzjq;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzem;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zzaqt:Lcom/google/android/gms/internal/measurement/zzjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjq;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zzaqt:Lcom/google/android/gms/internal/measurement/zzjq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjr;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjw()V

    return-void
.end method
