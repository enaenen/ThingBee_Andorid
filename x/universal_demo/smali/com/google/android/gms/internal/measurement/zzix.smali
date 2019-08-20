.class final Lcom/google/android/gms/internal/measurement/zzix;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanq:Lcom/google/android/gms/internal/measurement/zzec;

.field private final synthetic zzaoe:Lcom/google/android/gms/internal/measurement/zzjs;

.field private final synthetic zzapy:Lcom/google/android/gms/internal/measurement/zzil;

.field private final synthetic zzaqc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzil;ZLcom/google/android/gms/internal/measurement/zzjs;Lcom/google/android/gms/internal/measurement/zzec;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzaqc:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzaoe:Lcom/google/android/gms/internal/measurement/zzjs;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzd(Lcom/google/android/gms/internal/measurement/zzil;)Lcom/google/android/gms/internal/measurement/zzey;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzil()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzaqc:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzaoe:Lcom/google/android/gms/internal/measurement/zzjs;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzanq:Lcom/google/android/gms/internal/measurement/zzec;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzey;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/internal/measurement/zzec;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zze(Lcom/google/android/gms/internal/measurement/zzil;)V

    return-void
.end method
