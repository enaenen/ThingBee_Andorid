.class Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;
.super Landroid/os/AsyncTask;
.source "TweetsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchTweetsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/sherdle/universal/providers/twitter/Tweet;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final CONSUMER_KEY:Ljava/lang/String;

.field private final CONSUMER_SECRET:Ljava/lang/String;

.field private final URL_AUTH:Ljava/lang/String;

.field private final URL_BASE:Ljava/lang/String;

.field private final URL_PARAM:Ljava/lang/String;

.field private final URL_SEARCH:Ljava/lang/String;

.field private final URL_TIMELINE:Ljava/lang/String;

.field private URL_VALUE:Ljava/lang/String;

.field final synthetic this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "https://api.twitter.com"

    .line 131
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_BASE:Ljava/lang/String;

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.twitter.com/1.1/statuses/user_timeline.json?count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    iget-object v0, v0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->perpage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tweet_mode=extended&exclude_replies=true&include_rts=1&screen_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_TIMELINE:Ljava/lang/String;

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://api.twitter.com/1.1/search/tweets.json?count="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    iget-object v0, v0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->perpage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&q="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_SEARCH:Ljava/lang/String;

    const-string p1, "&max_id="

    .line 139
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_PARAM:Ljava/lang/String;

    const-string p1, "https://api.twitter.com/oauth2/token"

    .line 140
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_AUTH:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->CONSUMER_KEY:Ljava/lang/String;

    .line 143
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f00fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->CONSUMER_SECRET:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;-><init>(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;)V

    return-void
.end method

.method private authenticateApp()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 153
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://api.twitter.com/oauth2/token"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "POST"

    .line 155
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 157
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->CONSUMER_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->CONSUMER_SECRET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "grant_type=client_credentials"

    const-string v4, "Authorization"

    .line 165
    invoke-virtual {v1, v4, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 166
    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 172
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 173
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 175
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "Post response"

    .line 183
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Json response - tokenk"

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 191
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_2
    :try_start_3
    const-string v4, "INFO"

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    if-nez v3, :cond_2

    return-object v0

    .line 195
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/twitter/Tweet;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 213
    aget-object p1, p1, v0

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "?"

    .line 215
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_SEARCH:Ljava/lang/String;

    iput-object v1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_VALUE:Ljava/lang/String;

    const/4 v1, 0x1

    .line 218
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 220
    invoke-static {v2}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 222
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_TIMELINE:Ljava/lang/String;

    iput-object v2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_VALUE:Ljava/lang/String;

    :goto_1
    const/4 v2, 0x0

    .line 232
    :try_start_1
    iget-object v3, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    iget-object v3, v3, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->latesttweetid:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    iget-object v3, v3, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->latesttweetid:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    iget-object v3, v3, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->latesttweetid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long v7, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 234
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_VALUE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&max_id="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 236
    :cond_1
    new-instance v4, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->URL_VALUE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string p1, "INFO"

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "GET"

    .line 240
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->authenticateApp()Ljava/lang/String;

    move-result-object v3

    .line 243
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "access_token"

    .line 245
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Authorization"

    .line 247
    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    .line 248
    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 252
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v3, "GET response"

    .line 261
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "JSON response"

    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "statuses"

    .line 269
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_4

    .line 271
    :cond_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 274
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 276
    :goto_5
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 278
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 279
    new-instance v5, Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-direct {v5}, Lcom/sherdle/universal/providers/twitter/Tweet;-><init>()V

    const-string v6, "user"

    .line 281
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setname(Ljava/lang/String;)V

    const-string v6, "user"

    .line 282
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "screen_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setusername(Ljava/lang/String;)V

    const-string v6, "user"

    .line 283
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "profile_image_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_normal"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->seturlProfileImage(Ljava/lang/String;)V

    const-string v6, "full_text"

    .line 284
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setmessage(Ljava/lang/String;)V

    const-string v6, "retweet_count"

    .line 285
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setRetweetCount(I)V

    const-string v6, "created_at"

    .line 286
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setData(Ljava/lang/String;)V

    const-string v6, "id"

    .line 287
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setTweetId(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v6, "extended_entities"

    .line 290
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "extended_entities"

    .line 291
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "media"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "media_url"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "extended_entities"

    .line 292
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "media"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "photo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 293
    invoke-virtual {v5, v6}, Lcom/sherdle/universal/providers/twitter/Tweet;->setImageUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v6

    .line 296
    :try_start_5
    invoke-static {v6}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 300
    :cond_4
    :goto_6
    iget-object v6, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->latesttweetid:Ljava/lang/String;

    .line 302
    invoke-virtual {v3, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_5
    if-eqz p1, :cond_6

    .line 311
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v3, v2

    :goto_7
    move-object v2, p1

    goto :goto_8

    :catchall_1
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    goto :goto_a

    :catch_4
    move-exception p1

    move-object v0, p1

    move-object v3, v2

    .line 306
    :goto_8
    :try_start_6
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    const-string p1, "INFO"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: GET "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_6

    .line 311
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    :goto_9
    return-object v3

    :goto_a
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/twitter/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->isLoading:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->access$100(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    .line 326
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->access$200(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;)Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->setModeAndNotify(I)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 202
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 204
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->this$0:Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method
