.class public Lcom/sherdle/universal/providers/wordpress/PostItem;
.super Ljava/lang/Object;
.source "PostItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private author:Ljava/lang/String;

.field private commentCount:Ljava/lang/Long;

.field private commentsArray:Lcom/sherdle/universal/util/SerializableJSONArray;

.field private content:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private featuredImageUrl:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isCompleted:Z

.field private tag:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->isCompleted:Z

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->type:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->attachments:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Long;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->commentCount:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->commentCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getCommentsArray()Lorg/json/JSONArray;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->commentsArray:Lcom/sherdle/universal/util/SerializableJSONArray;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->commentsArray:Lcom/sherdle/universal/util/SerializableJSONArray;

    invoke-virtual {v0}, Lcom/sherdle/universal/util/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getFeaturedImageUrl()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->featuredImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getImageCandidate()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(null)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->type:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailCandidate()Ljava/lang/String;
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(null)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getFeaturedImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->isCompleted:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->author:Ljava/lang/String;

    return-void
.end method

.method public setCommentCount(Ljava/lang/Long;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->commentCount:Ljava/lang/Long;

    return-void
.end method

.method public setCommentsArray(Lorg/json/JSONArray;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/sherdle/universal/util/SerializableJSONArray;

    invoke-direct {v0, p1}, Lcom/sherdle/universal/util/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->commentsArray:Lcom/sherdle/universal/util/SerializableJSONArray;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->date:Ljava/util/Date;

    return-void
.end method

.method public setFeaturedImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->featuredImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPostCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->isCompleted:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->tag:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/PostItem;->url:Ljava/lang/String;

    return-void
.end method
