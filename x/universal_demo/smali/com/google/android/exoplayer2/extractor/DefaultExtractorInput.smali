.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# static fields
.field private static final PEEK_MAX_FREE_SPACE:I = 0x80000

.field private static final PEEK_MIN_FREE_SPACE_AFTER_RESIZE:I = 0x10000

.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 33
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource;JJ)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    .line 50
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 51
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    .line 52
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method

.method private commitBytesRead(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 274
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 3

    .line 180
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 181
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length p1, p1

    if-le v0, p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p1

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_0
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    return p2

    .line 262
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    add-int/2addr p4, p1

    return p4
.end method

.method private readFromPeekBuffer([BII)I
    .locals 2

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p3
.end method

.method private skipFromPeekBuffer(I)I
    .locals 1

    .line 195
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 196
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p1
.end method

.method private updatePeekBuffer(I)V
    .locals 5

    .line 224
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 226
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 227
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v3, v3

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 228
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p1, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v5, v0

    :cond_0
    if-ge v5, p1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 139
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 p1, 0x1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 6

    .line 155
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long v4, v0, v2

    return-wide v4
.end method

.method public getPosition()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p3, :cond_0

    if-eq v5, v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 171
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 172
    throw p3
.end method

.method public skip(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    const/4 v3, 0x0

    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    .line 87
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v0

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 98
    sget-object v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    neg-int v3, v5

    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    add-int/2addr v0, v5

    .line 99
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v1, p0

    move v6, p2

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
