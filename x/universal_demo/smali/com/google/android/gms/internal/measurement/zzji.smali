.class final Lcom/google/android/gms/internal/measurement/zzji;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzabo:Ljava/lang/Runnable;

.field private final synthetic zzafi:Lcom/google/android/gms/internal/measurement/zzgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjf;Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzji;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzji;->zzabo:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzji;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzka()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzji;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzji;->zzabo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zze(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzji;->zzafi:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjw()V

    return-void
.end method
