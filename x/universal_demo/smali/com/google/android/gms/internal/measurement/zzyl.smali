.class final Lcom/google/android/gms/internal/measurement/zzyl;
.super Lcom/google/android/gms/internal/measurement/zzyj;


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private final zzbtt:Z

.field private zzbtu:I

.field private zzbtv:I

.field private zzbtw:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzyj;-><init>(Lcom/google/android/gms/internal/measurement/zzyk;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtw:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzyl;->limit:I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzyl;->pos:I

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->pos:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtv:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtt:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzyk;)V
    .locals 0

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzyl;-><init>([BIIZ)V

    return-void
.end method

.method private final zzts()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->limit:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtv:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtw:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtu:I

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtu:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->limit:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtu:I

    return-void
.end method


# virtual methods
.method public final zzah(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzyy;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyy;->zzuf()Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object p1

    throw p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyj;->zztr()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtw:I

    if-le p1, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzyy;->zzue()Lcom/google/android/gms/internal/measurement/zzyy;

    move-result-object p1

    throw p1

    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtw:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzyl;->zzts()V

    return v0
.end method

.method public final zztr()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzyl;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzyl;->zzbtv:I

    sub-int/2addr v0, v1

    return v0
.end method
