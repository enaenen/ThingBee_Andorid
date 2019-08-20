.class Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;
.super Ljava/io/InputStream;
.source "PeekInputStream.java"


# static fields
.field private static final SCRATCH_SPACE:[B


# instance fields
.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final stream:Ljava/io/InputStream;

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 25
    new-array v0, v0, [B

    sput-object v0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->SCRATCH_SPACE:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x2000

    .line 29
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    .line 38
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->stream:Ljava/io/InputStream;

    .line 39
    iput-wide p2, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->position:J

    .line 40
    iput-wide p4, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->streamLength:J

    return-void
.end method

.method private advancePeekPosition(IZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->ensureSpaceForPeek(I)V

    .line 123
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    iget v1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    iget v1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    sub-int v2, p1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    move v6, v0

    :cond_0
    if-lt v6, p1, :cond_1

    .line 128
    iget p2, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    const/4 p1, 0x1

    return p1

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    iget v4, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    move-object v2, p0

    move v5, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromStream([BIIIZ)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method private commitBytesRead(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 226
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->position:J

    int-to-long v2, p1

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->position:J

    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 2

    .line 159
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 160
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    array-length p1, p1

    if-le v0, p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    :cond_0
    return-void
.end method

.method private readFromPeekBuffer()I
    .locals 2

    .line 173
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    .line 177
    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->updatePeekBuffer(I)V

    return v0
.end method

.method private readFromPeekBuffer([BII)I
    .locals 2

    .line 183
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 187
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-direct {p0, p3}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->updatePeekBuffer(I)V

    return p3
.end method

.method private readFromStream()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method private readFromStream([BIIIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->stream:Ljava/io/InputStream;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    return p2

    .line 216
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    add-int/2addr p4, p1

    return p4
.end method

.method private readFully([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromPeekBuffer([BII)I

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

    invoke-direct/range {v1 .. v6}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromStream([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, v5}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private skipFromPeekBuffer(I)I
    .locals 1

    .line 167
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 168
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->updatePeekBuffer(I)V

    return p1
.end method

.method private skipFully(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    sget-object v2, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->SCRATCH_SPACE:[B

    neg-int v3, v5

    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->SCRATCH_SPACE:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromStream([BIIIZ)I

    move-result v5

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, v5}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private updatePeekBuffer(I)V
    .locals 4

    .line 194
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    .line 196
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    iget v3, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferLength:I

    invoke-static {v1, p1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    .line 139
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public getLength()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 6

    .line 147
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->position:J

    iget v2, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    int-to-long v2, v2

    add-long v4, v0, v2

    return-wide v4
.end method

.method public getPosition()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->position:J

    return-wide v0
.end method

.method peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekFully([BIIZ)Z

    return-void
.end method

.method peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 109
    invoke-direct {p0, p3, p4}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 112
    :cond_0
    iget-object p4, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBuffer:[B

    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromPeekBuffer()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromStream()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 53
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->commitBytesRead(I)V

    return v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 62
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromStream([BIIIZ)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    move p1, v0

    .line 68
    :goto_0
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->commitBytesRead(I)V

    return p1
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

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFully([BIIZ)Z

    return-void
.end method

.method public resetPeekPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekBufferPosition:I

    return-void
.end method

.method public skip(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v2, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->SCRATCH_SPACE:[B

    const/4 v3, 0x0

    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->SCRATCH_SPACE:[B

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->readFromStream([BIIIZ)I

    move-result v0

    .line 91
    :cond_0
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->commitBytesRead(I)V

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

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->skipFully(IZ)Z

    return-void
.end method
