.class public Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;
.super Ljava/lang/Object;
.source "CommentObject.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private id:J

.field private timeStamp:I

.field private trackid:J

.field private userId:J

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJLjava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->id:J

    .line 18
    iput-wide p3, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->trackid:J

    .line 19
    iput-wide p5, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->userId:J

    .line 20
    iput-object p7, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->createdAt:Ljava/util/Date;

    .line 21
    iput p8, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->timeStamp:I

    .line 22
    iput-object p9, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->body:Ljava/lang/String;

    .line 23
    iput-object p10, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->username:Ljava/lang/String;

    .line 24
    iput-object p11, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->avatarUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->id:J

    return-wide v0
.end method

.method public getTimeStamp()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->timeStamp:I

    return v0
.end method

.method public getTrackid()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->trackid:J

    return-wide v0
.end method

.method public getUserId()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->userId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;->username:Ljava/lang/String;

    return-object v0
.end method
