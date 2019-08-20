.class final Lcom/google/android/gms/internal/measurement/zzdz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzadd:Ljava/lang/String;

.field private final synthetic zzade:J

.field private final synthetic zzadf:Lcom/google/android/gms/internal/measurement/zzdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdx;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzadf:Lcom/google/android/gms/internal/measurement/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzadd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzade:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzadf:Lcom/google/android/gms/internal/measurement/zzdx;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzadd:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/zzdz;->zzade:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzdx;->zzb(Lcom/google/android/gms/internal/measurement/zzdx;Ljava/lang/String;J)V

    return-void
.end method
