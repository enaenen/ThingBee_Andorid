.class final Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;
.super Ljava/lang/Object;
.source "PlayerPlaylist.java"


# static fields
.field private static sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;


# instance fields
.field private mCurrentTrackIndex:I

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mTracks:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    return-void
.end method

.method public static getInstance()Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;
    .locals 1

    .line 42
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    .line 45
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->sInstance:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    return-object v0
.end method


# virtual methods
.method public add(ILcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 2

    .line 105
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->add(ILcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    .line 94
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->add(ILcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 2

    .line 63
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTrackIndex()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    return v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 2

    .line 149
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    .line 150
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    return-object v0
.end method

.method public previous()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v1, v0

    iput v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    .line 161
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    return-object v0
.end method

.method public remove(I)Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_2

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 126
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 133
    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    .line 134
    iget v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    if-ge p1, v2, :cond_3

    .line 136
    iget p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return-object v1
.end method

.method setPlayingTrack(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->mCurrentTrackIndex:I

    return-void

    .line 191
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tracks a the position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
