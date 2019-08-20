.class final Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field public final data:[B

.field private final limit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 39
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    mul-int/lit8 p2, p2, 0x8

    .line 50
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public limit()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    return v0
.end method

.method public readBit()Z
    .locals 2

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBits(I)I
    .locals 13

    .line 77
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_1

    return v3

    .line 83
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/16 v1, 0xff

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    .line 84
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    rsub-int/lit8 v5, v0, 0x8

    ushr-int v5, v1, v5

    .line 86
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    ushr-int/2addr v6, v7

    and-int/2addr v5, v6

    .line 87
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 88
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-ne v6, v4, :cond_3

    .line 89
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 90
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v5, 0x0

    :cond_3
    :goto_1
    sub-int v2, p1, v0

    const/4 v6, 0x7

    if-le v2, v6, :cond_4

    .line 95
    div-int/2addr v2, v4

    :goto_2
    if-ge v3, v2, :cond_4

    int-to-long v5, v5

    .line 97
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    shl-long v7, v11, v0

    or-long v9, v5, v7

    long-to-int v5, v9

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-le p1, v0, :cond_5

    sub-int/2addr p1, v0

    sub-int/2addr v4, p1

    ushr-int/2addr v1, v4

    .line 105
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/2addr v1, v2

    shl-int v0, v1, v0

    or-int/2addr v5, v0

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    :cond_5
    return v5
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 58
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 139
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 140
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 141
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public skipBits(I)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 118
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 119
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .line 120
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 121
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    .line 122
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    :cond_1
    return-void
.end method
