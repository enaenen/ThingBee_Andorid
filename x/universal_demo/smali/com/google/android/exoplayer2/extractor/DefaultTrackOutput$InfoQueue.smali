.class final Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoQueue"
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private formats:[Lcom/google/android/exoplayer2/Format;

.field private largestDequeuedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private sourceIds:[I

.field private timesUs:[J

.field private upstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 625
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    .line 626
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 627
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 628
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 629
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 630
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 631
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 632
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    const-wide/high16 v0, -0x8000000000000000L

    .line 633
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 634
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    const/4 v0, 0x1

    .line 635
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 636
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized attemptSplice(J)Z
    .locals 5

    monitor-enter p0

    .line 971
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x0

    .line 972
    monitor-exit p0

    return p1

    .line 974
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    :goto_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 975
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v3, v4

    aget-wide v3, v2, v3

    cmp-long v2, v3, p1

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 979
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->discardUpstreamSamples(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 970
    monitor-exit p0

    throw p1
.end method

.method public clearSampleData()V
    .locals 1

    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 641
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 642
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 643
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    const/4 v0, 0x1

    .line 644
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .locals 5

    monitor-enter p0

    .line 896
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 898
    monitor-exit p0

    return-void

    .line 900
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamKeyframeRequired:Z

    .line 902
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->commitSampleTimestamp(J)V

    .line 904
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v0, v2

    .line 905
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, p1, p2

    .line 906
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p6, p1, p2

    .line 907
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput p3, p1, p2

    .line 908
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aput-object p7, p1, p2

    .line 909
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    aput-object p3, p1, p2

    .line 910
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    aput p3, p1, p2

    .line 912
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 913
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne p1, p2, :cond_2

    .line 915
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/lit16 p1, p1, 0x3e8

    .line 916
    new-array p2, p1, [I

    .line 917
    new-array p3, p1, [J

    .line 918
    new-array p4, p1, [J

    .line 919
    new-array p5, p1, [I

    .line 920
    new-array p6, p1, [I

    .line 921
    new-array p7, p1, [[B

    .line 922
    new-array v0, p1, [Lcom/google/android/exoplayer2/Format;

    .line 923
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    sub-int/2addr v2, v3

    .line 924
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, p5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, p6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, p7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    invoke-static {v3, v4, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 931
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 932
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    invoke-static {v4, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 933
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    invoke-static {v4, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    invoke-static {v4, v1, p5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    invoke-static {v4, v1, p6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 936
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    invoke-static {v4, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    invoke-static {v4, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 939
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    .line 940
    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    .line 941
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    .line 942
    iput-object p6, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    .line 943
    iput-object p7, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    .line 944
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    .line 945
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    .line 946
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 947
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 948
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 949
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    goto :goto_0

    .line 951
    :cond_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    .line 952
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne p1, p2, :cond_3

    .line 954
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 895
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized commitSampleTimestamp(J)V
    .locals 2

    monitor-enter p0

    .line 960
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 959
    monitor-exit p0

    throw p1
.end method

.method public discardUpstreamSamples(I)J
    .locals 7

    .line 668
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-ltz v0, :cond_0

    .line 669
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    if-nez v0, :cond_3

    .line 672
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 676
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    :goto_1
    sub-int/2addr v0, p1

    .line 677
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v1, p1, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget p1, p1, v0

    int-to-long v3, p1

    add-long v5, v1, v3

    return-wide v5

    .line 680
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 681
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 684
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 685
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr v0, p1

    :goto_2
    if-ltz v0, :cond_5

    .line 686
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v1, v2

    .line 687
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v5, v4, v1

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    .line 688
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v1, v2, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 692
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public declared-synchronized format(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 881
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 884
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    .line 885
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 887
    monitor-exit p0

    return v1

    .line 889
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    monitor-exit p0

    return v0

    .line 879
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLargestQueuedTimestampUs()J
    .locals 4

    monitor-enter p0

    .line 741
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadIndex()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public declared-synchronized getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 727
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWriteIndex()I
    .locals 2

    .line 658
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 720
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public peekSourceId()I
    .locals 2

    .line 713
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sourceIds:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public declared-synchronized readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;)I
    .locals 4

    monitor-enter p0

    .line 769
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    const/4 v1, -0x3

    const/4 v2, -0x5

    const/4 v3, -0x4

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 771
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return v3

    .line 773
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    if-eq p2, p5, :cond_2

    .line 775
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    monitor-exit p0

    return v2

    .line 778
    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    if-nez p3, :cond_8

    .line 782
    :try_start_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget p4, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_4

    goto :goto_1

    .line 787
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isFlagsOnly()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 788
    monitor-exit p0

    return v1

    .line 791
    :cond_5
    :try_start_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide p3, p1, p3

    iput-wide p3, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    .line 792
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget p1, p1, p3

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 793
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget p1, p1, p3

    iput p1, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    .line 794
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide p3, p1, p3

    iput-wide p3, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    .line 795
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->encryptionKeys:[[B

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object p1, p1, p3

    iput-object p1, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->encryptionKeyId:[B

    .line 797
    iget-wide p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    iget-wide p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 798
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 799
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 800
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 801
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    if-ne p1, p2, :cond_6

    const/4 p1, 0x0

    .line 803
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 806
    :cond_6
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide p2, p1, p2

    goto :goto_0

    :cond_7
    iget-wide p1, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->offset:J

    iget p3, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->size:I

    int-to-long p3, p3

    add-long v0, p1, p3

    move-wide p2, v0

    :goto_0
    iput-wide p2, p6, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$BufferExtrasHolder;->nextOffset:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 808
    monitor-exit p0

    return v3

    .line 783
    :cond_8
    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->formats:[Lcom/google/android/exoplayer2/Format;

    iget p3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 784
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 768
    monitor-exit p0

    throw p1
.end method

.method public resetLargestParsedTimestamps()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 650
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestDequeuedTimestampUs:J

    .line 651
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J

    return-void
.end method

.method public declared-synchronized skipAll()J
    .locals 6

    monitor-enter p0

    .line 818
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 819
    monitor-exit p0

    return-wide v0

    .line 822
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v0, v1

    .line 823
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 824
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    const/4 v1, 0x0

    .line 825
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 826
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->sizes:[I

    aget v0, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    add-long v4, v2, v0

    monitor-exit p0

    return-wide v4

    :catchall_0
    move-exception v0

    .line 817
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skipToKeyframeBefore(JZ)J
    .locals 8

    monitor-enter p0

    .line 841
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide v3, v0, v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_2

    .line 845
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    if-nez p3, :cond_1

    .line 846
    monitor-exit p0

    return-wide v1

    :cond_1
    const/4 p3, 0x0

    .line 854
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    const/4 v3, -0x1

    const/4 p3, -0x1

    const/4 v4, 0x0

    .line 855
    :goto_0
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeWriteIndex:I

    if-eq v0, v5, :cond_4

    .line 856
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->timesUs:[J

    aget-wide v6, v5, v0

    cmp-long v5, v6, p1

    if-lez v5, :cond_2

    goto :goto_1

    .line 859
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->flags:[I

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    move p3, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 863
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-ne p3, v3, :cond_5

    .line 868
    monitor-exit p0

    return-wide v1

    .line 871
    :cond_5
    :try_start_2
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    add-int/2addr p1, p3

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->capacity:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    .line 872
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->absoluteReadIndex:I

    .line 873
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->queueSize:I

    .line 874
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->offsets:[J

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->relativeReadIndex:I

    aget-wide p2, p1, p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p2

    .line 842
    :cond_6
    :goto_2
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 840
    monitor-exit p0

    throw p1
.end method

.method public sourceId(I)V
    .locals 0

    .line 696
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultTrackOutput$InfoQueue;->upstreamSourceId:I

    return-void
.end method
