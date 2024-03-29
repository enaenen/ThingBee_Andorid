.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Ljava/lang/Object;
.source "ClippingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation


# instance fields
.field private clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final startUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;JJ)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 53
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 54
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->startUs:J

    .line 55
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->endUs:J

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 6

    .line 72
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->startUs:J

    add-long v4, v2, p3

    .line 73
    invoke-interface {v1, p1, p2, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 74
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$000(Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$100(Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 7

    .line 94
    new-instance v6, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->startUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->endUs:J

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;JJ)V

    iput-object v6, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .line 95
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$000(Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide p1

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$100(Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->clippingTimeline:Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;

    .line 98
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->access$100(Lcom/google/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;)J

    move-result-wide v0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 101
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->setClipping(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 0

    .line 61
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->sourceListener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    .line 62
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    check-cast p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method
