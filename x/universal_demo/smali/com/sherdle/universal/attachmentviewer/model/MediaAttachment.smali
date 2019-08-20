.class public Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;
.super Lcom/sherdle/universal/attachmentviewer/model/Attachment;
.source "MediaAttachment.java"


# static fields
.field public static MIME_PATTERN_AUDIO:Ljava/lang/String; = "audio/"

.field public static MIME_PATTERN_IMAGE:Ljava/lang/String; = "image/"

.field public static MIME_PATTERN_VID:Ljava/lang/String; = "video/"


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:J

.field private mime:Ljava/lang/String;

.field private thumburl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/model/Attachment;-><init>()V

    if-eqz p4, :cond_0

    const-string v0, ""

    .line 29
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iput-object p4, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->description:Ljava/lang/String;

    .line 33
    :cond_0
    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->mime:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->url:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->thumburl:Ljava/lang/String;

    return-void
.end method

.method public static withAudio(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;
    .locals 3

    .line 47
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    sget-object v1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_AUDIO:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;
    .locals 3

    .line 39
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    sget-object v1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withVideo(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;
    .locals 3

    .line 43
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    sget-object v1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_VID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->duration:J

    return-wide v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->thumburl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioMeta(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->artist:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->album:Ljava/lang/String;

    .line 65
    iput-wide p3, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->duration:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->description:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Mime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
