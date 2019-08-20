.class final Lcom/google/android/gms/internal/measurement/zzga;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaky:Lcom/google/android/gms/internal/measurement/zzfz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzga;->zzaky:Lcom/google/android/gms/internal/measurement/zzfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzga;->zzaky:Lcom/google/android/gms/internal/measurement/zzfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzjf()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzga;->zzaky:Lcom/google/android/gms/internal/measurement/zzfz;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzfz;->zzakx:Lcom/google/android/gms/internal/measurement/zzfx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzc(Landroid/os/Bundle;)V

    return-void
.end method
