.class final Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;
.super Landroid/os/AsyncTask;
.source "AlbumArtGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter;->getImageForQuery(Ljava/lang/String;Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$query:Ljava/lang/String;

    iput-object p2, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$callback:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 28
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$query:Ljava/lang/String;

    const-string v0, "null+null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$query:Ljava/lang/String;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "null+null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://itunes.apple.com/search?term="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$query:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&media=music&limit=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "results"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "results"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "results"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "artworkUrl100"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "100x100bb.jpg"

    const-string v1, "500x500bb.jpg"

    .line 37
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "INFO"

    const-string v0, "No items in Album Art Request"

    .line 39
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 51
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1$1;-><init>(Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->val$callback:Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;->finished(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
