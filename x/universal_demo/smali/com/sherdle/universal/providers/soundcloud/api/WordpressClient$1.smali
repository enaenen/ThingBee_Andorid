.class Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;
.super Ljava/lang/Object;
.source "WordpressClient.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->getTracksInCategory(Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;

.field final synthetic val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/util/ArrayList;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    iput-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$results:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    .locals 28

    move-object/from16 v0, p0

    .line 48
    iget-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 50
    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    .line 51
    invoke-virtual {v3}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_AUDIO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_1
    if-eqz v1, :cond_2

    .line 57
    new-instance v15, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getDuration()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 58
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getContent()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getArtist()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getUrl()Ljava/lang/String;

    move-result-object v18

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailCandidate()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 59
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v2, v15

    move-object/from16 v27, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-wide/from16 v20, v21

    move-wide/from16 v22, v23

    move-wide/from16 v24, v25

    move-object/from16 v26, v1

    invoke-direct/range {v2 .. v26}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;-><init>(JLjava/util/Date;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    const/4 v1, 0x1

    move-object/from16 v2, v27

    .line 60
    invoke-virtual {v2, v1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->setStreamAble(Z)V

    .line 62
    iget-object v1, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;->val$results:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
