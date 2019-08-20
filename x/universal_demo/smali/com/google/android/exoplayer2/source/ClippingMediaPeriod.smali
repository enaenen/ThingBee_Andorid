.class public final Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private endUs:J

.field public final mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private pendingInitialDiscontinuity:Z

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

.field private startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 54
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const/4 p1, 0x0

    .line 55
    new-array p1, p1, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v3, p1, v1

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(J)V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v3, p1, v1

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(J)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 8

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 142
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 146
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v6, v0, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 7

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 165
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, v0, v2

    return-wide v4

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 6

    .line 181
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 189
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 190
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 73
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 9

    .line 119
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    if-eqz v6, :cond_0

    .line 122
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearPendingDiscontinuity()V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    .line 127
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    return-wide v3

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_4

    return-wide v1

    .line 134
    :cond_4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, v4, v0

    const/4 v0, 0x1

    if-ltz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 135
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v1, v6

    if-eqz v8, :cond_7

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v4, v1

    if-gtz v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 136
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v2, v4, v0

    return-wide v2
.end method

.method public seekToUs(J)J
    .locals 7

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v5, p1, v3

    invoke-interface {v0, v5, v6}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    .line 157
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v5, p1, v3

    cmp-long p1, v0, v5

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 159
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v2, v0, p1

    return-wide v2
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    .line 89
    array-length v2, v9

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v2, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 90
    array-length v2, v9

    new-array v7, v2, [Lcom/google/android/exoplayer2/source/SampleStream;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 91
    :goto_0
    array-length v4, v9

    const/16 v17, 0x0

    if-ge v3, v4, :cond_1

    .line 92
    iget-object v4, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v5, v9, v3

    check-cast v5, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v5, v4, v3

    .line 93
    iget-object v4, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v17

    :cond_0
    aput-object v17, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v10, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-wide v3, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v15, p5, v3

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    move-object/from16 v14, p4

    invoke-interface/range {v10 .. v16}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v10

    .line 97
    iget-wide v3, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    add-long v5, p5, v3

    cmp-long v0, v10, v5

    if-eqz v0, :cond_3

    iget-wide v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    cmp-long v3, v10, v0

    if-ltz v3, :cond_2

    iget-wide v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-wide v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    cmp-long v3, v10, v0

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v12, 0x0

    .line 100
    :goto_3
    array-length v0, v9

    if-ge v12, v0, :cond_7

    .line 101
    aget-object v0, v7, v12

    if-nez v0, :cond_5

    .line 102
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v17, v0, v12

    :cond_4
    move-object/from16 v16, v7

    goto :goto_4

    .line 103
    :cond_5
    aget-object v0, v9, v12

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v0, v0, v12

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;->access$000(Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;)Lcom/google/android/exoplayer2/source/SampleStream;

    move-result-object v0

    aget-object v1, v7, v12

    if-eq v0, v1, :cond_4

    .line 104
    :cond_6
    iget-object v13, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    new-instance v14, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v2, v7, v12

    iget-wide v3, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    iget-wide v5, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    iget-boolean v15, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->pendingInitialDiscontinuity:Z

    move-object v0, v14

    move-object v1, v8

    move-object/from16 v16, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Lcom/google/android/exoplayer2/source/SampleStream;JJZ)V

    aput-object v14, v13, v12

    .line 107
    :goto_4
    iget-object v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v0, v0, v12

    aput-object v0, v9, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v16

    goto :goto_3

    .line 109
    :cond_7
    iget-wide v0, v8, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    sub-long v2, v10, v0

    return-wide v2
.end method

.method public setClipping(JJ)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->startUs:J

    .line 67
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->endUs:J

    return-void
.end method
