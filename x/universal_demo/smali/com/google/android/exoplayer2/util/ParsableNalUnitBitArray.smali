.class public final Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field private data:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .line 222
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    return-void
.end method

.method private readExpGolombCodeNum()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    .line 212
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method private shouldSkipByte(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-gt v1, p1, :cond_0

    .line 216
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v1, v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v2, p1, -0x2

    aget-byte v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    sub-int/2addr p1, v0

    aget-byte p1, v1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public canReadBits(I)Z
    .locals 4

    .line 88
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 89
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    .line 90
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v2, p1

    const/4 p1, 0x7

    if-le v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v1, :cond_2

    .line 95
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v1, v3, :cond_2

    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 102
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v1, v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v1, v0, :cond_3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 7

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 177
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 183
    :goto_1
    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 184
    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 185
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public readBit()Z
    .locals 2

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBits(I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 128
    :cond_0
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v0, v1, :cond_3

    .line 130
    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    iget v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v5, v5, 0x1

    .line 132
    :goto_1
    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-eqz v6, :cond_2

    .line 133
    iget-object v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v7, v7, v5

    and-int/2addr v7, v3

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    sub-int/2addr v4, v8

    ushr-int v4, v7, v4

    or-int/2addr v4, v6

    goto :goto_2

    .line 136
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v4, v4, v6

    :goto_2
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v3, v4

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    .line 140
    iput v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lez p1, :cond_7

    .line 145
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v3, p1

    int-to-byte p1, p1

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    :goto_3
    if-le v0, v4, :cond_6

    .line 151
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v3

    add-int/lit8 v6, v0, -0x8

    shl-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v6, v6, v1

    and-int/2addr v3, v6

    rsub-int/lit8 v6, v0, 0x10

    shr-int/2addr v3, v6

    or-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 153
    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    :cond_5
    :goto_4
    move v2, p1

    goto :goto_5

    .line 156
    :cond_6
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x8

    shr-int/2addr v3, v5

    and-int/2addr p1, v3

    or-int/2addr p1, v2

    if-ne v0, v4, :cond_5

    .line 158
    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_4

    .line 162
    :goto_5
    rem-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 165
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return v2
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 204
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([BII)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    .line 51
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 52
    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBits(I)V
    .locals 3

    .line 63
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 64
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v2, p1, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 65
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 66
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le p1, v1, :cond_0

    .line 67
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 68
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 70
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-gt v0, p1, :cond_1

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return-void
.end method
