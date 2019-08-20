.class Lcom/sherdle/universal/comments/CommentsActivity$5;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/comments/CommentsActivity;->fetchComments(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/comments/CommentsActivity;

.field final synthetic val$parseableString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity$5;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iput-object p2, p0, Lcom/sherdle/universal/comments/CommentsActivity$5;->val$parseableString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$5;->val$parseableString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "comments"

    .line 304
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 308
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 310
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 311
    new-instance v5, Lcom/sherdle/universal/comments/Comment;

    invoke-direct {v5}, Lcom/sherdle/universal/comments/Comment;-><init>()V

    const-string v6, "content"

    .line 312
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<p>"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "</p>"

    const-string v8, ""

    .line 314
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sherdle/universal/comments/Comment;->text:Ljava/lang/String;

    const-string v6, "author"

    .line 315
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "login"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    const-string v6, "author"

    .line 316
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "avatar_URL"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sherdle/universal/comments/Comment;->profileUrl:Ljava/lang/String;

    const-string v6, "ID"

    .line 317
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/sherdle/universal/comments/Comment;->id:I

    const-string v6, "parent"

    .line 319
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "ID"

    .line 322
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/sherdle/universal/comments/Comment;->parentId:I

    goto :goto_1

    .line 324
    :cond_0
    iput v2, v5, Lcom/sherdle/universal/comments/Comment;->parentId:I

    .line 327
    :goto_1
    iput v2, v5, Lcom/sherdle/universal/comments/Comment;->linesCount:I

    .line 328
    iget v4, v5, Lcom/sherdle/universal/comments/Comment;->parentId:I

    if-nez v4, :cond_1

    .line 329
    iget-object v4, p0, Lcom/sherdle/universal/comments/CommentsActivity$5;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iget-object v4, v4, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$5;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    invoke-static {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->access$000(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 338
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 341
    :goto_3
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$5;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$5$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/comments/CommentsActivity$5$1;-><init>(Lcom/sherdle/universal/comments/CommentsActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
