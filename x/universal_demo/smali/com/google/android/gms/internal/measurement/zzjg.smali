.class final synthetic Lcom/google/android/gms/internal/measurement/zzjg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzabk:I

.field private final zzaqk:Lcom/google/android/gms/internal/measurement/zzjf;

.field private final zzaql:Lcom/google/android/gms/internal/measurement/zzfg;

.field private final zzaqm:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjf;ILcom/google/android/gms/internal/measurement/zzfg;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzaqk:Lcom/google/android/gms/internal/measurement/zzjf;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzabk:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzaql:Lcom/google/android/gms/internal/measurement/zzfg;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzaqm:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzaqk:Lcom/google/android/gms/internal/measurement/zzjf;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzabk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzaql:Lcom/google/android/gms/internal/measurement/zzfg;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjg;->zzaqm:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjf;->zza(ILcom/google/android/gms/internal/measurement/zzfg;Landroid/content/Intent;)V

    return-void
.end method
