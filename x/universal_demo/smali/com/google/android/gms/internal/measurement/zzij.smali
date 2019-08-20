.class final Lcom/google/android/gms/internal/measurement/zzij;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzapo:Lcom/google/android/gms/internal/measurement/zzih;

.field private final synthetic zzapp:Lcom/google/android/gms/internal/measurement/zzik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzih;Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzapp:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzapp:Lcom/google/android/gms/internal/measurement/zzik;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzih;->zza(Lcom/google/android/gms/internal/measurement/zzih;Lcom/google/android/gms/internal/measurement/zzik;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzih;->zzapc:Lcom/google/android/gms/internal/measurement/zzik;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzij;->zzapo:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhj;->zzfx()Lcom/google/android/gms/internal/measurement/zzil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void
.end method
