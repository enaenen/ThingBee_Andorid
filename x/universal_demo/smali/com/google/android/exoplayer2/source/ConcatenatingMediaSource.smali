.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    }
.end annotation


# instance fields
.field private final duplicateFlags:[Z

.field private listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

.field private final manifests:[Ljava/lang/Object;

.field private final mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

.field private final sourceIndexByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

.field private final timelines:[Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    .line 51
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/Timeline;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    .line 52
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    .line 54
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private static buildDuplicateFlags([Lcom/google/android/exoplayer2/source/MediaSource;)[Z
    .locals 5

    .line 131
    array-length v0, p0

    new-array v0, v0, [Z

    .line 132
    new-instance v1, Ljava/util/IdentityHashMap;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    const/4 v2, 0x0

    .line 133
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 134
    aget-object v3, p0, v2

    .line 135
    invoke-virtual {v1, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 136
    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 138
    aput-boolean v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleSourceInfoRefreshed(ILcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p2, v0, p1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v0, p1

    add-int/lit8 v0, p1, 0x1

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v2, v2, p1

    if-ne v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    aput-object p2, v1, v0

    .line 117
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget-object v0, p1, p3

    if-nez v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 126
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p2}, [Lcom/google/android/exoplayer2/Timeline;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>([Lcom/google/android/exoplayer2/Timeline;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 127
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$100(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$200(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v1

    sub-int/2addr p1, v1

    .line 86
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(ILcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V
    .locals 2

    .line 59
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->listener:Lcom/google/android/exoplayer2/source/MediaSource$Listener;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v0, v0

    if-ge p3, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v0, v0, p3

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v0, p3

    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;I)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/ExoPlayer;ZLcom/google/android/exoplayer2/source/MediaSource$Listener;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 2

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lcom/google/android/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
