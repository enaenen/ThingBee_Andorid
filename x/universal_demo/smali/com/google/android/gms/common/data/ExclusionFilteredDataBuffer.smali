.class public final Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;
.super Lcom/google/android/gms/common/data/FilteredDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBufferObserver$Observable;
.implements Lcom/google/android/gms/common/data/ExclusionFilterable;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/FilteredDataBuffer<",
        "TT;>;",
        "Lcom/google/android/gms/common/data/DataBufferObserver$Observable;",
        "Lcom/google/android/gms/common/data/ExclusionFilterable;"
    }
.end annotation


# instance fields
.field private zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzod:Ljava/lang/String;

.field private final zzoe:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/AbstractDataBuffer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    iput-object p2, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzod:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct {p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    iget-object v1, v1, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzod:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    instance-of v3, v3, Lcom/google/android/gms/common/data/EntityBuffer;

    iget-object v4, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoc:Lcom/google/android/gms/common/data/AbstractDataBuffer;

    check-cast v7, Lcom/google/android/gms/common/data/EntityBuffer;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/common/data/EntityBuffer;->zzi(I)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v8

    invoke-virtual {v1, v2, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    neg-int v8, v6

    add-int/lit8 v8, v8, -0x1

    move v10, v8

    move v8, v6

    move v6, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v6, 0x1

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V

    return-void
.end method

.method public final clearFilters()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    if-nez v3, :cond_1

    :goto_1
    move v4, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int v7, v4, v3

    if-ne v5, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v7, v4, v3}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_4
    return-void
.end method

.method public final computeRealPosition(I)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    if-ltz p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds for this buffer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filterOut(Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zza(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_3

    :goto_2
    move v5, v6

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v5, -0x1

    if-ne v6, v7, :cond_4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v7, v5, v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    if-lez v4, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final release()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/data/FilteredDataBuffer;->release()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->clear()V

    return-void
.end method

.method public final removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V

    return-void
.end method

.method public final unfilter(Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zza(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ltz v1, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    neg-int v6, v6

    sub-int/2addr v6, v2

    if-nez v4, :cond_3

    :goto_2
    move v5, v6

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    if-ne v6, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v7, v5, v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    if-lez v4, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/data/ExclusionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method
