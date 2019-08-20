.class public final Lcom/google/android/gms/gcm/zzl;
.super Ljava/lang/Object;


# static fields
.field public static final zzao:Lcom/google/android/gms/gcm/zzl;

.field private static final zzap:Lcom/google/android/gms/gcm/zzl;


# instance fields
.field private final zzaq:I

.field private final zzar:I

.field private final zzas:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/gcm/zzl;

    const/16 v1, 0xe10

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/gcm/zzl;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzl;->zzao:Lcom/google/android/gms/gcm/zzl;

    new-instance v0, Lcom/google/android/gms/gcm/zzl;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/gcm/zzl;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzl;->zzap:Lcom/google/android/gms/gcm/zzl;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    const/16 p1, 0x1e

    iput p1, p0, Lcom/google/android/gms/gcm/zzl;->zzar:I

    const/16 p1, 0xe10

    iput p1, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/gcm/zzl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/gcm/zzl;

    iget v1, p1, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/google/android/gms/gcm/zzl;->zzar:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzl;->zzar:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/google/android/gms/gcm/zzl;->zzas:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lcom/google/android/gms/gcm/zzl;->zzar:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzar:I

    iget v2, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " initial_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maximum_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "retry_policy"

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "initial_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maximum_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzaq:I

    return v0
.end method

.method public final zzi()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzar:I

    return v0
.end method

.method public final zzj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzl;->zzas:I

    return v0
.end method
