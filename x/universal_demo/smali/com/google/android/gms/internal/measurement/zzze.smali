.class Lcom/google/android/gms/internal/measurement/zzze;
.super Ljava/lang/Object;


# static fields
.field private static final zzbvm:Lcom/google/android/gms/internal/measurement/zzze;

.field private static final zzbvn:Lcom/google/android/gms/internal/measurement/zzze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzg;-><init>(Lcom/google/android/gms/internal/measurement/zzzf;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzze;->zzbvm:Lcom/google/android/gms/internal/measurement/zzze;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzh;-><init>(Lcom/google/android/gms/internal/measurement/zzzf;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzze;->zzbvn:Lcom/google/android/gms/internal/measurement/zzze;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzzf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzze;-><init>()V

    return-void
.end method

.method static zzui()Lcom/google/android/gms/internal/measurement/zzze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzze;->zzbvm:Lcom/google/android/gms/internal/measurement/zzze;

    return-object v0
.end method

.method static zzuj()Lcom/google/android/gms/internal/measurement/zzze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzze;->zzbvn:Lcom/google/android/gms/internal/measurement/zzze;

    return-object v0
.end method
