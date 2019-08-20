.class final Lcom/google/android/gms/internal/measurement/zzir;
.super Lcom/google/android/gms/internal/measurement/zzem;


# instance fields
.field private final synthetic zzapy:Lcom/google/android/gms/internal/measurement/zzil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzir;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzem;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzir;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzgg()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzin()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void
.end method
