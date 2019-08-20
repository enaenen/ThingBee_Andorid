.class Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;
.super Landroid/os/AsyncTask;
.source "TumblrFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialLoadGridView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    aget-object p1, p1, v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    iget-object p1, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    iget-object v2, v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->perpage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    iget-object v2, v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    .line 135
    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getDataFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "INFO"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tumblr JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 141
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "response"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    move-object p1, v1

    .line 150
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    const-string v3, "total_posts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->total_posts:Ljava/lang/Integer;

    .line 152
    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    iget-object v2, v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->total_posts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "posts"

    .line 157
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x0

    .line 161
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 162
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    .line 165
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "post_url"

    .line 166
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "photos"

    .line 167
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 171
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v7, "original_size"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_1

    .line 175
    new-instance v7, Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    invoke-direct {v7, v5, v6, v4}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :cond_3
    :try_start_3
    const-string p1, "INFO"

    const-string v0, "No items found"

    .line 180
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 185
    :goto_3
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_4
    move-exception p1

    .line 183
    :goto_4
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_5
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->access$100(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    .line 197
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->access$200(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;)Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->setModeAndNotify(I)V

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method
