.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field private final formatSupport:[[[I

.field public final length:I

.field private final mixedMimeTypeAdaptiveSupport:[I

.field private final rendererTrackTypes:[I

.field private final trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 570
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 571
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    .line 572
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    .line 573
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 574
    array-length p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .locals 6

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 678
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 681
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    if-eqz p3, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 685
    aput v2, v1, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 688
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    .line 689
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result p1

    return p1
.end method

.method public getAdaptiveSupport(II[I)I
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 707
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_1

    .line 708
    aget v5, p3, v0

    .line 709
    iget-object v6, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, v6, p1

    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    if-nez v1, :cond_0

    move-object v3, v5

    goto :goto_1

    .line 714
    :cond_0
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    move v2, v1

    .line 716
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0xc

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v0, v0, 0x1

    move v1, v6

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 719
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    aget p1, p2, p1

    .line 720
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_2
    return v4
.end method

.method public getRendererSupport(I)I
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 598
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    move v3, v2

    const/4 v2, 0x0

    .line 599
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 601
    aget-object v4, p1, v1

    aget v4, v4, v2

    const/4 v5, 0x3

    and-int/2addr v4, v5

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x1

    goto :goto_2

    :pswitch_0
    return v5

    :pswitch_1
    const/4 v4, 0x2

    .line 611
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTrackFormatSupport(III)I
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    aget p1, p1, p3

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTrackTypeRendererSupport(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 629
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v0, v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 631
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getUnassociatedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method
