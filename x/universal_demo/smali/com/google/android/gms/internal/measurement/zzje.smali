.class final Lcom/google/android/gms/internal/measurement/zzje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaqi:Lcom/google/android/gms/internal/measurement/zziz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziz;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzil;Lcom/google/android/gms/internal/measurement/zzey;)Lcom/google/android/gms/internal/measurement/zzey;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziz;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzil;->zzb(Lcom/google/android/gms/internal/measurement/zzil;)V

    return-void
.end method
