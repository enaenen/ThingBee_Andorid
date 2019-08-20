.class public abstract Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;,
        Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingAudioSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelector;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    return-void
.end method

.method private static findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 378
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 380
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 381
    aget-object v4, p0, v0

    move v5, v2

    const/4 v2, 0x0

    .line 382
    :goto_1
    iget v6, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v6, :cond_2

    .line 383
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    const/4 v7, 0x3

    and-int/2addr v6, v7

    if-le v6, v3, :cond_1

    if-ne v6, v7, :cond_0

    return v0

    :cond_0
    move v5, v0

    move v3, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 410
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 411
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 412
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 428
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 429
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 430
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V
    .locals 10

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 464
    :goto_0
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 465
    aget-object v5, p0, v2

    invoke-interface {v5}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v5

    .line 466
    aget-object v7, p4, v2

    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 469
    aget-object v8, p2, v2

    aget-object v9, p1, v2

    invoke-static {v8, v9, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v5, v6, :cond_3

    if-eq v3, v1, :cond_2

    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    if-eq v4, v1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    :goto_3
    if-eq v3, v1, :cond_7

    if-eq v4, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 491
    new-instance p0, Lcom/google/android/exoplayer2/RendererConfiguration;

    invoke-direct {p0, p5}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 493
    aput-object p0, p3, v3

    .line 494
    aput-object p0, p3, v4

    :cond_8
    return-void
.end method

.method private static rendererSupportsTunneling([[ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 512
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result p1

    const/4 v1, 0x0

    .line 513
    :goto_0
    invoke-interface {p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 514
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 192
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 198
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 227
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void
.end method

.method public final clearSelectionOverrides(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 181
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 169
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    .line 337
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public final selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 255
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 256
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 257
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [[[I

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 258
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 259
    iget v4, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/TrackGroup;

    aput-object v4, v1, v3

    .line 260
    iget v4, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array v4, v4, [[I

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupport([Lcom/google/android/exoplayer2/RendererCapabilities;)[I

    move-result-object v6

    const/4 v3, 0x0

    .line 268
    :goto_1
    iget v4, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_2

    .line 269
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 271
    invoke-static {p1, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v5

    .line 273
    array-length v7, p1

    if-ne v5, v7, :cond_1

    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v7, v7, [I

    goto :goto_2

    :cond_1
    aget-object v7, p1, v5

    .line 274
    invoke-static {v7, v4}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroup;)[I

    move-result-object v7

    .line 276
    :goto_2
    aget v8, v0, v5

    .line 277
    aget-object v10, v1, v5

    aput-object v4, v10, v8

    .line 278
    aget-object v4, v2, v5

    aput-object v7, v4, v8

    .line 279
    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    :cond_2
    array-length v3, p1

    new-array v10, v3, [Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 284
    array-length v3, p1

    new-array v4, v3, [I

    const/4 v3, 0x0

    .line 285
    :goto_3
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 286
    aget v5, v0, v3

    .line 287
    new-instance v7, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v1, v3

    .line 288
    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    aput-object v7, v10, v3

    .line 289
    aget-object v7, v2, v3

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    aput-object v5, v2, v3

    .line 290
    aget-object v5, p1, v3

    invoke-interface {v5}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 294
    :cond_3
    array-length v3, p1

    aget v0, v0, v3

    .line 295
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    array-length v3, p1

    aget-object v1, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    .line 298
    invoke-virtual {p0, p1, v10, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    const/4 v1, 0x0

    .line 302
    :goto_4
    array-length v3, p1

    const/4 v11, 0x0

    if-ge v1, v3, :cond_7

    .line 303
    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 304
    aput-object v11, v0, v1

    goto :goto_6

    .line 306
    :cond_4
    aget-object v3, v10, v1

    .line 307
    invoke-virtual {p0, v1, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 308
    iget-object v5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    if-nez v5, :cond_5

    goto :goto_5

    .line 310
    :cond_5
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v11

    :goto_5
    aput-object v11, v0, v1

    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 316
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v3, v1

    move-object v5, v10

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V

    .line 322
    array-length v3, p1

    new-array v12, v3, [Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 324
    :goto_7
    array-length v3, p1

    if-ge v9, v3, :cond_9

    .line 325
    aget-object v3, v0, v9

    if-eqz v3, :cond_8

    sget-object v3, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    goto :goto_8

    :cond_8
    move-object v3, v11

    :goto_8
    aput-object v3, v12, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 328
    :cond_9
    iget v8, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    move-object v3, p1

    move-object v4, v10

    move-object v5, v2

    move-object v6, v12

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->maybeConfigureRenderersForTunneling([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I[Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;I)V

    .line 331
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplayer2/trackselection/TrackSelection;)V

    invoke-direct {p1, p2, v2, v1, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Ljava/lang/Object;[Lcom/google/android/exoplayer2/RendererConfiguration;)V

    return-object p1
.end method

.method protected abstract selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void
.end method

.method public final setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 156
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    return-void
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1

    .line 241
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    if-eq v0, p1, :cond_0

    .line 242
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->tunnelingAudioSessionId:I

    .line 243
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->invalidate()V

    :cond_0
    return-void
.end method
