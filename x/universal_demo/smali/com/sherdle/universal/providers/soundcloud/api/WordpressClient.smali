.class public Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;
.super Ljava/lang/Object;
.source "WordpressClient.java"


# instance fields
.field private apiUrl:Ljava/lang/String;

.field private maxPages:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->apiUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getListCommentObject(J)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getListTrackObjectsByQuery(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxPages()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->maxPages:I

    return v0
.end method

.method public getRecentTracks(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->getTracksInCategory(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getTracksInCategory(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 33
    new-instance v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v2, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->apiUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    .line 35
    invoke-interface {v5, v1}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getRecentPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    move-object/from16 v6, p1

    .line 36
    invoke-interface {v5, v1, v6}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getCategoryPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-interface {v2, v1, v3}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->parsePostsFromUrl(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    iget-object v3, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->pages:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 39
    :cond_1
    iget-object v3, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->pages:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->maxPages:I

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 44
    iget-object v6, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    instance-of v6, v6, Lcom/sherdle/universal/providers/wordpress/api/providers/RestApiProvider;

    if-eqz v6, :cond_3

    .line 45
    new-instance v6, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;

    iget-object v7, v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->apiUrl:Ljava/lang/String;

    new-instance v8, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;

    invoke-direct {v8, v0, v5, v3}, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/util/ArrayList;)V

    invoke-direct {v6, v5, v7, v8}, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;-><init>(Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;)V

    .line 66
    invoke-virtual {v6}, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->run()V

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    .line 70
    invoke-virtual {v7}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_AUDIO:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_5
    move-object v7, v4

    :goto_2
    if-eqz v7, :cond_2

    .line 76
    new-instance v6, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 77
    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getContent()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAuthor()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getUrl()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailCandidate()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    .line 78
    invoke-virtual {v5}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    invoke-virtual {v7}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v32

    move-object v8, v6

    invoke-direct/range {v8 .. v32}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;-><init>(JLjava/util/Date;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    const/4 v5, 0x1

    .line 79
    invoke-virtual {v6, v5}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->setStreamAble(Z)V

    .line 81
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    return-object v3

    :cond_7
    :goto_3
    return-object v4
.end method
