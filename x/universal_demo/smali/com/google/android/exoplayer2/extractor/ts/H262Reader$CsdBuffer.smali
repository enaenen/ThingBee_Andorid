.class final Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;
.super Ljava/lang/Object;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/H262Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsdBuffer"
.end annotation


# instance fields
.field public data:[B

.field private isFilling:Z

.field public length:I

.field public sequenceExtensionPosition:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    return-void
.end method


# virtual methods
.method public onData([BII)V
    .locals 2

    .line 276
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr v1, p3

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    return-void
.end method

.method public onStartCode(II)Z
    .locals 3

    .line 254
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 255
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    if-nez v0, :cond_0

    const/16 v0, 0xb5

    if-ne p1, v0, :cond_0

    .line 256
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    goto :goto_0

    .line 258
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 259
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    return v1

    :cond_1
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_2

    .line 263
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    :cond_2
    :goto_0
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->isFilling:Z

    .line 239
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->length:I

    .line 240
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    return-void
.end method
