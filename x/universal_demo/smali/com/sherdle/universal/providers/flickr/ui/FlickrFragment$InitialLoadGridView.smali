.class Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;
.super Landroid/os/AsyncTask;
.source "FlickrFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;
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
        "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$1;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;-><init>(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 141
    aget-object p1, p1, v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    iget-object p1, p1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    iget-object v2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    iget-object v2, v2, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    .line 145
    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getDataFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "INFO"

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tumblr JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "jsonFlickrApi("

    const-string v3, ""

    .line 152
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 163
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    iget-object p1, p1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->method:Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "photoset"

    goto :goto_1

    :cond_1
    const-string p1, "photos"

    .line 164
    :goto_1
    iget-object v3, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pages"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->total_pages:Ljava/lang/Integer;

    .line 170
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 174
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 178
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 179
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.flickr.com/photos/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pathalias"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url_o"

    .line 183
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "url_o"

    .line 184
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    const-string v6, "url_b"

    .line 185
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "url_b"

    .line 186
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    const-string v6, "url_c"

    .line 187
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "url_c"

    .line 188
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v2

    :goto_3
    const-string v7, "url_z"

    .line 192
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "url_z"

    .line 193
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v6

    :goto_4
    if-eqz v6, :cond_6

    .line 199
    new-instance v7, Lcom/sherdle/universal/providers/flickr/FlickrItem;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/sherdle/universal/providers/flickr/FlickrItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v1, v2

    .line 207
    :goto_5
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v1, v2

    .line 205
    :goto_6
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_7
    :goto_7
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->access$100(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    .line 219
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->access$200(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;)Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->setModeAndNotify(I)V

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->this$0:Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method
