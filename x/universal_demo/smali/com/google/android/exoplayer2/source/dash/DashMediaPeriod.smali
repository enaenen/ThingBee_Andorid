.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private adaptationSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private final chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

.field private final elapsedRealtimeOffset:J

.field private final embeddedTrackInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

.field private final eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field final id:I

.field private manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final minLoadableRetryCount:I

.field private periodIndex:I

.field private sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

.field private final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/dash/manifest/DashManifest;ILcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;ILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->id:I

    .line 72
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 73
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 74
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 75
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    .line 76
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 77
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    .line 78
    iput-object p9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 79
    iput-object p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    const/4 p1, 0x0

    .line 80
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 81
    new-instance p1, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    .line 82
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    .line 83
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    .line 84
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 85
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->embeddedTrackInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    return-void
.end method

.method private buildSampleStream(ILcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 273
    iget-object v0, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    const/4 v2, 0x2

    .line 275
    new-array v2, v2, [I

    .line 276
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v19

    const/4 v3, 0x0

    if-eqz v19, :cond_0

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v3, 0x1

    .line 280
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v20

    if-eqz v20, :cond_1

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x3

    .line 282
    aput v5, v2, v3

    move v3, v4

    .line 284
    :cond_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 285
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 287
    :cond_2
    iget-object v11, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->chunkSourceFactory:Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v12, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v13, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget v14, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    iget-wide v3, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->elapsedRealtimeOffset:J

    move v15, v1

    move-object/from16 v16, p2

    move-wide/from16 v17, v3

    invoke-interface/range {v11 .. v20}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;->createDashChunkSource(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;IILcom/google/android/exoplayer2/trackselection/TrackSelection;JZZ)Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    move-result-object v3

    .line 290
    new-instance v11, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->type:I

    iget-object v5, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v8, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->minLoadableRetryCount:I

    iget-object v9, v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->eventDispatcher:Lcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object v0, v11

    move-object v4, v10

    move-wide/from16 v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[ILcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;)V

    return-object v11
.end method

.method private static buildTrackGroups(Ljava/util/List;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "[",
            "Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    .line 241
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->getEmbeddedTrackCount(Ljava/util/List;)I

    move-result v1

    add-int v2, v0, v1

    .line 242
    new-array v2, v2, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 243
    new-array v1, v1, [Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    move-object/from16 v6, p0

    .line 247
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 248
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 249
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/exoplayer2/Format;

    const/4 v10, 0x0

    .line 250
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_0

    .line 251
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 253
    :cond_0
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v2, v4

    .line 254
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":emsg"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "application/x-emsg"

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-static {v8, v10, v12, v11, v12}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    add-int v10, v0, v5

    .line 257
    new-instance v11, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v12, v9, [Lcom/google/android/exoplayer2/Format;

    aput-object v8, v12, v3

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v11, v2, v10

    add-int/lit8 v8, v5, 0x1

    .line 258
    new-instance v10, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    const/4 v11, 0x4

    invoke-direct {v10, v4, v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;-><init>(II)V

    aput-object v10, v1, v5

    move v5, v8

    .line 260
    :cond_1
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v7, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->id:I

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":cea608"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/cea-608"

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    add-int v8, v0, v5

    .line 263
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v9, v9, [Lcom/google/android/exoplayer2/Format;

    aput-object v7, v9, v3

    invoke-direct {v10, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v2, v8

    add-int/lit8 v7, v5, 0x1

    .line 264
    new-instance v8, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    const/4 v9, 0x3

    invoke-direct {v8, v4, v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;-><init>(II)V

    aput-object v8, v1, v5

    move v5, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 268
    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static getEmbeddedTrackCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 298
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 299
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    .line 300
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasEventMessageTrack(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 303
    :cond_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->hasCea608Track(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static hasCea608Track(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z
    .locals 4

    .line 322
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->accessibilityDescriptors:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 323
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 324
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SchemeValuePair;

    const-string v3, "urn:scte:dash:cc:cea-608:2015"

    .line 325
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SchemeValuePair;->schemeIdUri:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static hasEventMessageTrack(Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;)Z
    .locals 3

    .line 311
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 313
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    .line 314
    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;"
        }
    .end annotation

    .line 334
    new-array p0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 1

    .line 338
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v0, :cond_0

    .line 339
    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(J)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 190
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUnselectedEmbeddedTracksTo(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 12

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 213
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getBufferedPositionUs()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_0

    .line 215
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move-wide v5, v7

    :cond_2
    return-wide v5
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifestLoaderErrorThrower:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 47
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/dash/DashChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 109
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public release()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 102
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 224
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->seekToUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p5

    .line 125
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 126
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 128
    :goto_0
    array-length v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_4

    .line 129
    aget-object v9, p3, v8

    instance-of v9, v9, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v9, :cond_2

    .line 131
    aget-object v9, p3, v8

    check-cast v9, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 132
    aget-object v12, v1, v8

    if-eqz v12, :cond_1

    aget-boolean v12, p2, v8

    if-nez v12, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v12, v1, v8

    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v10

    .line 137
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 133
    :cond_1
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release()V

    .line 134
    aput-object v10, p3, v8

    .line 140
    :cond_2
    :goto_2
    aget-object v9, p3, v8

    if-nez v9, :cond_3

    aget-object v9, v1, v8

    if-eqz v9, :cond_3

    .line 141
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v10, v1, v8

    invoke-interface {v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v9

    if-ge v9, v5, :cond_3

    .line 143
    aget-object v10, v1, v8

    invoke-direct {v0, v9, v10, v3, v4}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->buildSampleStream(ILcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v10

    .line 145
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    aput-object v10, p3, v8

    .line 147
    aput-boolean v11, p4, v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 152
    :goto_3
    array-length v9, v1

    if-ge v8, v9, :cond_c

    .line 153
    aget-object v9, p3, v8

    instance-of v9, v9, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-nez v9, :cond_5

    aget-object v9, p3, v8

    instance-of v9, v9, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    if-eqz v9, :cond_7

    :cond_5
    aget-object v9, v1, v8

    if-eqz v9, :cond_6

    aget-boolean v9, p2, v8

    if-nez v9, :cond_7

    .line 156
    :cond_6
    aget-object v9, p3, v8

    invoke-static {v9}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    .line 157
    aput-object v10, p3, v8

    .line 161
    :cond_7
    aget-object v9, v1, v8

    if-eqz v9, :cond_b

    .line 162
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v12, v1, v8

    invoke-interface {v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v9

    if-lt v9, v5, :cond_b

    sub-int/2addr v9, v5

    .line 165
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->embeddedTrackInfos:[Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;

    aget-object v9, v12, v9

    .line 166
    iget v12, v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;->adaptationSetIndex:I

    .line 167
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 168
    aget-object v13, p3, v8

    if-nez v12, :cond_8

    .line 169
    instance-of v7, v13, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    goto :goto_4

    :cond_8
    instance-of v7, v13, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    if-eqz v7, :cond_9

    move-object v7, v13

    check-cast v7, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object v7, v7, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-ne v7, v12, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_b

    .line 173
    invoke-static {v13}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->releaseIfEmbeddedSampleStream(Lcom/google/android/exoplayer2/source/SampleStream;)V

    if-nez v12, :cond_a

    .line 174
    new-instance v7, Lcom/google/android/exoplayer2/source/EmptySampleStream;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/source/EmptySampleStream;-><init>()V

    goto :goto_5

    :cond_a
    iget v7, v9, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$EmbeddedTrackInfo;->trackType:I

    .line 175
    invoke-virtual {v12, v3, v4, v7}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    move-result-object v7

    :goto_5
    aput-object v7, p3, v8

    .line 176
    aput-boolean v11, p4, v8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 181
    :cond_c
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->newSampleStreamArray(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 182
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    new-instance v1, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sequenceableLoader:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;

    return-wide v3
.end method

.method public updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V
    .locals 4

    .line 89
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 90
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->periodIndex:I

    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->adaptationSets:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->sampleStreams:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 94
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashChunkSource;->updateManifest(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method
