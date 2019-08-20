.class final Lcom/google/android/gms/internal/measurement/zzjb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$name:Landroid/content/ComponentName;

.field private final synthetic zzaqi:Lcom/google/android/gms/internal/measurement/zziz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziz;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzjb;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzaqi:Lcom/google/android/gms/internal/measurement/zziz;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziz;->zzapy:Lcom/google/android/gms/internal/measurement/zzil;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzil;->zza(Lcom/google/android/gms/internal/measurement/zzil;Landroid/content/ComponentName;)V

    return-void
.end method
