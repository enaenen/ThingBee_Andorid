.class Lcom/sherdle/universal/comments/CommentsActivity$1;
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

    .line 84
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity$1;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iput-object p2, p0, Lcom/sherdle/universal/comments/CommentsActivity$1;->val$parseableString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$1;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iget-object v0, v0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity$1;->val$parseableString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    .line 92
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/sherdle/universal/comments/Comment;

    invoke-direct {v3}, Lcom/sherdle/universal/comments/Comment;-><init>()V

    const-string v4, "text"

    .line 97
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/comments/Comment;->text:Ljava/lang/String;

    const-string v4, "username"

    .line 99
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/sherdle/universal/comments/CommentsActivity$1;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iget-object v2, v2, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$1;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$1$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/comments/CommentsActivity$1$1;-><init>(Lcom/sherdle/universal/comments/CommentsActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
