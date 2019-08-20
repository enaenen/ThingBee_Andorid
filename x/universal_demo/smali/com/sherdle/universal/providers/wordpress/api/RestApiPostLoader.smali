.class public final Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;
.super Ljava/lang/Thread;
.source "RestApiPostLoader.java"


# instance fields
.field private apiBase:Ljava/lang/String;

.field private item:Lcom/sherdle/universal/providers/wordpress/PostItem;

.field private listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 19
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->apiBase:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 25
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->apiBase:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/providers/RestApiProvider;->getPostMediaUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->getJSONArrayFromUrl(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 36
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "mime_type"

    .line 37
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    sget-object v5, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "media_details"

    .line 42
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "sizes"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "large"

    .line 43
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "large"

    .line 44
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "source_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const-string v6, "source_url"

    .line 46
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    const-string v7, "medium"

    .line 48
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "medium"

    .line 49
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "source_url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    const-string v5, "source_url"

    .line 51
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    move-object v5, v2

    :goto_2
    const-string v7, "title"

    .line 53
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "rendered"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    new-instance v8, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    const-string v9, "mime_type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9, v5, v7}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v5, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_AUDIO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "media_details"

    .line 57
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "artist"

    .line 58
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "album"

    .line 59
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "length"

    .line 60
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long v6, v6, v9

    .line 61
    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->setAudioMeta(Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    :cond_3
    iget-object v3, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v3, v8}, Lcom/sherdle/universal/providers/wordpress/PostItem;->addAttachment(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setPostCompleted()V

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-interface {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;->completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 77
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    if-eqz v0, :cond_5

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    invoke-interface {v0, v2}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;->completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    :cond_5
    :goto_3
    return-void
.end method
