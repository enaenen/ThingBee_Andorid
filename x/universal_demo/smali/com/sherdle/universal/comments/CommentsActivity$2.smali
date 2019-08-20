.class Lcom/sherdle/universal/comments/CommentsActivity$2;
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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity$2;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iput-object p2, p0, Lcom/sherdle/universal/comments/CommentsActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "items"

    .line 157
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 158
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "snippet"

    .line 161
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "topLevelComment"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "snippet"

    .line 164
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "topLevelComment"

    .line 165
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "snippet"

    .line 166
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 167
    new-instance v3, Lcom/sherdle/universal/comments/Comment;

    invoke-direct {v3}, Lcom/sherdle/universal/comments/Comment;-><init>()V

    const-string v4, "textDisplay"

    .line 169
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/comments/Comment;->text:Ljava/lang/String;

    const-string v4, "authorDisplayName"

    .line 171
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    const-string v4, "authorProfileImageUrl"

    .line 173
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sherdle/universal/comments/Comment;->profileUrl:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/sherdle/universal/comments/CommentsActivity$2;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iget-object v2, v2, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 180
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$2;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$2$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/comments/CommentsActivity$2$1;-><init>(Lcom/sherdle/universal/comments/CommentsActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
