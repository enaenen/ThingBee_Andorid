.class final Lcom/google/android/gms/internal/measurement/zzea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzade:J

.field private final synthetic zzadf:Lcom/google/android/gms/internal/measurement/zzdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdx;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzea;->zzadf:Lcom/google/android/gms/internal/measurement/zzdx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzea;->zzade:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzea;->zzadf:Lcom/google/android/gms/internal/measurement/zzdx;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzea;->zzade:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzdx;->zza(Lcom/google/android/gms/internal/measurement/zzdx;J)V

    return-void
.end method
