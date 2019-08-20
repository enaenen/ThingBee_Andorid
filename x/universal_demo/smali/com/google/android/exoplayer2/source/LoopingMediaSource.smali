.class public final Lcom/google/android/exoplayer2/source/LoopingMediaSource;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
    }
.end annotation


# static fields
.field public static final MAX_EXPOSED_PERIODS:I = 0x9660180

.field private static final TAG:Ljava/lang/String; = "LoopingMediaSource"


# instance fields
.field private childPeriodCount:I

.field private final childSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    const v0, 0x7fffffff

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/LoopingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 66
    iput p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/exoplayer2/source/LoopingMediaSource;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/LoopingMediaSource;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return p0
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iget v1, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    rem-int/2addr p1, v1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 1

    .line 71
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v0, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;

    invoke-direct {v0, p0, p3}, Lcom/google/android/exoplayer2/source/LoopingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/LoopingMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/LoopingMediaSource;->childSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method
