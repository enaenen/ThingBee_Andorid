.class public final Lcom/google/android/gms/internal/measurement/zzabm;
.super Ljava/lang/Object;


# static fields
.field private static final zzbzt:I = 0xb

.field private static final zzbzu:I = 0xc

.field private static final zzbzv:I = 0x10

.field private static final zzbzw:I = 0x1a

.field public static final zzbzx:[I

.field public static final zzbzy:[J

.field private static final zzbzz:[F

.field private static final zzcaa:[D

.field private static final zzcab:[Z

.field public static final zzcac:[Ljava/lang/String;

.field private static final zzcad:[[B

.field public static final zzcae:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzbzx:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzbzy:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzbzz:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzcaa:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzcab:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzcac:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzabm;->zzcad:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabm;->zzcae:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/measurement/zzaba;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaba;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaba;->zzam(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaba;->zzvo()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaba;->zzam(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzaba;->zzd(II)V

    return v1
.end method
