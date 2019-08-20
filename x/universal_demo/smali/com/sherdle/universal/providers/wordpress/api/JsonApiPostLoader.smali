.class public final Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;
.super Ljava/lang/Thread;
.source "JsonApiPostLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;
    }
.end annotation


# instance fields
.field private apiBase:Ljava/lang/String;

.field private item:Lcom/sherdle/universal/providers/wordpress/PostItem;

.field private listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 17
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->apiBase:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->apiBase:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getPostUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "status"

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "post"

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setContent(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    const-string v2, "comment_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setCommentCount(Ljava/lang/Long;)V

    .line 36
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    const-string v2, "comments"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setCommentsArray(Lorg/json/JSONArray;)V

    .line 38
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setPostCompleted()V

    .line 41
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-interface {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;->completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 49
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->listener:Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;->completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    :cond_0
    :goto_0
    return-void
.end method
