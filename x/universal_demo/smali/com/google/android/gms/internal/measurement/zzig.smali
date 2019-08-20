.class public Lcom/google/android/gms/internal/measurement/zzig;
.super Ljava/lang/Object;


# instance fields
.field public zzapa:Ljava/lang/String;

.field public zzapb:J

.field public zzug:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzig;->zzug:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzug:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzig;->zzapa:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzapa:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/measurement/zzig;->zzapb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzapb:J

    return-void
.end method
