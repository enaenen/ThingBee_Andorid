.class final synthetic Lcom/google/android/gms/internal/measurement/zzjh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzabn:Landroid/app/job/JobParameters;

.field private final zzaqk:Lcom/google/android/gms/internal/measurement/zzjf;

.field private final zzaqn:Lcom/google/android/gms/internal/measurement/zzfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjf;Lcom/google/android/gms/internal/measurement/zzfg;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzaqk:Lcom/google/android/gms/internal/measurement/zzjf;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzaqn:Lcom/google/android/gms/internal/measurement/zzfg;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzabn:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzaqk:Lcom/google/android/gms/internal/measurement/zzjf;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzaqn:Lcom/google/android/gms/internal/measurement/zzfg;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjh;->zzabn:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(Lcom/google/android/gms/internal/measurement/zzfg;Landroid/app/job/JobParameters;)V

    return-void
.end method
