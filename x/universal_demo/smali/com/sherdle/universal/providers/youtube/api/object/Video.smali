.class public Lcom/sherdle/universal/providers/youtube/api/object/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channel:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private thumbUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->title:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->id:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->updated:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->description:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->thumbUrl:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->image:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/Video;->updated:Ljava/lang/String;

    return-object v0
.end method
