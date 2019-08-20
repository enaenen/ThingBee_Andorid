.class Lcom/sherdle/universal/comments/CommentsActivity$3;
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

    .line 200
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iput-object p2, p0, Lcom/sherdle/universal/comments/CommentsActivity$3;->val$parseableString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 206
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity$3;->val$parseableString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 210
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 212
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 213
    new-instance v5, Lcom/sherdle/universal/comments/Comment;

    invoke-direct {v5}, Lcom/sherdle/universal/comments/Comment;-><init>()V

    const-string v6, "content"

    .line 214
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<p>"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "</p>"

    const-string v8, ""

    .line 216
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sherdle/universal/comments/Comment;->text:Ljava/lang/String;

    const-string v6, "name"

    .line 217
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    const-string v6, "id"

    .line 218
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/sherdle/universal/comments/Comment;->id:I

    const-string v6, "parent"

    .line 219
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/sherdle/universal/comments/Comment;->parentId:I

    .line 220
    iput v2, v5, Lcom/sherdle/universal/comments/Comment;->linesCount:I

    .line 221
    iget v4, v5, Lcom/sherdle/universal/comments/Comment;->parentId:I

    if-nez v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iget-object v4, v4, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    invoke-static {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->access$000(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 231
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 234
    :goto_2
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$3$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/comments/CommentsActivity$3$1;-><init>(Lcom/sherdle/universal/comments/CommentsActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
