.class public final Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;,
        Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;,
        Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field private static final INITIAL_SCRATCH_SIZE:I = 0x20

.field private static final STATE_DISABLED:I = 0x2

.field private static final STATE_ENABLED:I = 0x0

.field private static final STATE_ENABLED_WRITING:I = 0x1


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/google/android/exoplayer2/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

.field private final infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

.field private lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

.field private lastAllocationOffset:I

.field private lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private sampleOffsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field private totalBytesDropped:J

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 87
    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    .line 88
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    .line 89
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 90
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;-><init>(Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    .line 91
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    return-void
.end method

.method private clearSampleData()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->clearSampleData()V

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    const-wide/16 v0, 0x0

    .line 559
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    .line 560
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    const/4 v0, 0x0

    .line 561
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 562
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    return-void
.end method

.method private dropDownstreamTo(J)V
    .locals 6

    .line 426
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v2, p1, v0

    long-to-int p1, v2

    .line 427
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    div-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    .line 430
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    int-to-long v2, v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dropUpstreamFrom(J)V
    .locals 4

    .line 153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v2, p1, v0

    long-to-int p1, v2

    .line 155
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    div-int p2, p1, p2

    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    rem-int/2addr p1, v0

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 165
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    if-nez p1, :cond_2

    .line 169
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    :cond_2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    return-void
.end method

.method private endWriteOperation()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    :cond_0
    return-void
.end method

.method private static getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 589
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 590
    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    add-long v2, v0, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private prepareForAppend(I)I
    .locals 2

    .line 570
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 571
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 572
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 6

    :goto_0
    if-lez p4, :cond_0

    .line 388
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 389
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v2, p1, v0

    long-to-int v0, v2

    .line 390
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    sub-int/2addr v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 391
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 392
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v2, v1

    add-long v4, p1, v2

    sub-int/2addr p4, v1

    move-wide p1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readData(J[BI)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 408
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    .line 409
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesDropped:J

    sub-long v3, p1, v1

    long-to-int v1, v3

    sub-int v2, p4, v0

    .line 410
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->allocationLength:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 411
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dataQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 412
    iget-object v4, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v1

    invoke-static {v4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v3, v2

    add-long v5, p1, v3

    add-int/2addr v0, v2

    move-wide p1, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 316
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 319
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 320
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    const-wide/16 v7, 0x1

    add-long v9, v3, v7

    .line 322
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 327
    iget-object v7, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-nez v7, :cond_1

    .line 328
    iget-object v7, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/16 v8, 0x10

    new-array v8, v8, [B

    iput-object v8, v7, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    .line 330
    :cond_1
    iget-object v7, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v7, v7, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-direct {v0, v9, v10, v7, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    int-to-long v7, v3

    add-long v11, v9, v7

    if-eqz v5, :cond_2

    .line 336
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 337
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v11, v12, v3, v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    const-wide/16 v6, 0x2

    add-long v8, v11, v6

    .line 339
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    move v11, v6

    goto :goto_1

    :cond_2
    move-wide v8, v11

    const/4 v11, 0x1

    .line 345
    :goto_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v3, :cond_4

    .line 346
    array-length v6, v3

    if-ge v6, v11, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v12, v3

    goto :goto_4

    .line 347
    :cond_4
    :goto_3
    new-array v3, v11, [I

    goto :goto_2

    .line 349
    :goto_4
    iget-object v3, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v3, :cond_6

    .line 350
    array-length v6, v3

    if-ge v6, v11, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object v13, v3

    goto :goto_7

    .line 351
    :cond_6
    :goto_6
    new-array v3, v11, [I

    goto :goto_5

    :goto_7
    if-eqz v5, :cond_8

    mul-int/lit8 v3, v11, 0x6

    .line 355
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 356
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {v0, v8, v9, v5, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(J[BI)V

    int-to-long v5, v3

    add-long v14, v8, v5

    .line 358
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_8
    if-ge v4, v11, :cond_7

    .line 360
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    aput v3, v12, v4

    .line 361
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    aput v3, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    move-wide v8, v14

    goto :goto_9

    .line 364
    :cond_8
    aput v4, v12, v4

    .line 365
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    iget-wide v5, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    sub-long v14, v8, v5

    long-to-int v5, v14

    sub-int/2addr v3, v5

    aput v3, v13, v4

    .line 369
    :goto_9
    iget-object v10, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v14, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v15, v1, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BI)V

    .line 373
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    sub-long v5, v8, v3

    long-to-int v1, v5

    .line 374
    iget-wide v3, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    int-to-long v5, v1

    add-long v7, v3, v5

    iput-wide v7, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 375
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    return-void
.end method

.method private startWriteOperation()Z
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    :cond_0
    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    .line 143
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropUpstreamFrom(J)V

    return-void
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 460
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->format(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    .line 462
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, 0x0

    .line 463
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingFormatAdjustment:Z

    .line 464
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    :cond_0
    return-void
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 301
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, -0x3

    return p1

    .line 283
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-nez p1, :cond_2

    .line 284
    iget-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long p1, p3, p5

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    .line 285
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)V

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget p1, p1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget-wide p3, p1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget-object p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget p2, p2, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->readData(JLjava/nio/ByteBuffer;I)V

    .line 295
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->extrasHolder:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    :cond_2
    const/4 p1, -0x4

    return p1

    .line 280
    :pswitch_2
    iget-object p1, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    const/4 p1, -0x5

    return p1

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 105
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->clearSampleData()V

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->resetLargestParsedTimestamps()V

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    :cond_1
    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 472
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 473
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p1

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_0

    return v1

    .line 478
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1

    .line 483
    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->prepareForAppend(I)I

    move-result p2

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 485
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v2

    .line 484
    invoke-interface {p1, v0, v2, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_4

    if-eqz p3, :cond_3

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    return v1

    .line 490
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 492
    :cond_4
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 493
    iget-wide p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v0, p1

    add-long v2, p2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    throw p1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 7

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    return-void

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 507
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->prepareForAppend(I)I

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/upstream/Allocation;->translateOffset(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 510
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastAllocationOffset:I

    .line 511
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    int-to-long v3, v0

    add-long v5, v1, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    sub-int/2addr p2, v0

    goto :goto_0

    .line 514
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 14

    move-object v1, p0

    move-wide v2, p1

    .line 520
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingFormatAdjustment:Z

    if-eqz v4, :cond_0

    .line 521
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 523
    :cond_0
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->startWriteOperation()Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    return-void

    .line 528
    :cond_1
    :try_start_0
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    if-eqz v4, :cond_4

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3

    .line 529
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->attemptSplice(J)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 532
    iput-boolean v5, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 538
    :cond_3
    :goto_0
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    return-void

    .line 534
    :cond_4
    :goto_1
    :try_start_1
    iget-wide v5, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    const/4 v7, 0x0

    add-long v7, v2, v5

    .line 535
    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->totalBytesWritten:J

    move/from16 v11, p4

    int-to-long v5, v11

    sub-long v9, v2, v5

    move/from16 v2, p5

    int-to-long v2, v2

    sub-long v12, v9, v2

    .line 536
    iget-object v5, v1, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    move-wide v6, v7

    move/from16 v8, p3

    move-wide v9, v12

    move-object/from16 v12, p6

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSample(JIJI[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->endWriteOperation()V

    throw v2
.end method

.method public setSampleOffsetUs(J)V
    .locals 3

    .line 452
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 453
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->sampleOffsetUs:J

    const/4 p1, 0x1

    .line 454
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingFormatAdjustment:Z

    :cond_0
    return-void
.end method

.method public setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$UpstreamFormatChangedListener;

    return-void
.end method

.method public skipAll()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->skipAll()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 234
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    :cond_0
    return-void
.end method

.method public skipToKeyframeBefore(JZ)Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->skipToKeyframeBefore(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 254
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->dropDownstreamTo(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public sourceId(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->infoQueue:Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceId(I)V

    return-void
.end method

.method public splice()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;->pendingSplice:Z

    return-void
.end method
