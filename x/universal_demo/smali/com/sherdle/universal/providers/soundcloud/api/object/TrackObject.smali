.class public Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
.super Ljava/lang/Object;
.source "TrackObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private artworkUrl:Ljava/lang/String;

.field private avatarUrl:Ljava/lang/String;

.field private commentCount:J

.field private createdDate:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private duration:J

.field private favoriteCount:J

.field private genre:Ljava/lang/String;

.field private id:J

.field private linkStream:Ljava/lang/String;

.field private permalinkUrl:Ljava/lang/String;

.field private playbackCount:J

.field private sharing:Ljava/lang/String;

.field private streamAble:Z

.field private tagList:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private userId:J

.field private username:Ljava/lang/String;

.field private waveForm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 31
    iput-wide v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->id:J

    move-object v1, p3

    .line 32
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->createdDate:Ljava/util/Date;

    move-wide v1, p4

    .line 33
    iput-wide v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->userId:J

    move-wide v1, p6

    .line 34
    iput-wide v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->duration:J

    move-object v1, p8

    .line 35
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->sharing:Ljava/lang/String;

    move-object v1, p9

    .line 36
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->tagList:Ljava/lang/String;

    move-object v1, p10

    .line 37
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->genre:Ljava/lang/String;

    move-object v1, p11

    .line 38
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->title:Ljava/lang/String;

    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->description:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 40
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->username:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 41
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->avatarUrl:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 42
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->permalinkUrl:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 43
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->artworkUrl:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 44
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->waveForm:Ljava/lang/String;

    move-wide/from16 v1, p18

    .line 45
    iput-wide v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->playbackCount:J

    move-wide/from16 v1, p20

    .line 46
    iput-wide v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->favoriteCount:J

    move-wide/from16 v1, p22

    .line 47
    iput-wide v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->commentCount:J

    move-object/from16 v1, p24

    .line 48
    iput-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->linkStream:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArtworkUrl()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->artworkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->commentCount:J

    return-wide v0
.end method

.method public getCreatedDate()Ljava/util/Date;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->createdDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->duration:J

    return-wide v0
.end method

.method public getFavoriteCount()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->favoriteCount:J

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->id:J

    return-wide v0
.end method

.method public getLinkStream()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->linkStream:Ljava/lang/String;

    return-object v0
.end method

.method public getPermalinkUrl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->permalinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackCount()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->playbackCount:J

    return-wide v0
.end method

.method public getSharing()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->sharing:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->tagList:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->userId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWaveForm()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->waveForm:Ljava/lang/String;

    return-object v0
.end method

.method public isStreamAble()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->streamAble:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->duration:J

    return-void
.end method

.method public setStreamAble(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->streamAble:Z

    return-void
.end method
