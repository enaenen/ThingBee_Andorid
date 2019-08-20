.class public Lcom/sherdle/universal/ConfigParser;
.super Landroid/os/AsyncTask;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/ConfigParser$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static CACHE_FILE:Ljava/lang/String; = "menuCache.srl"

.field private static jsonMenu:Lorg/json/JSONArray;


# instance fields
.field final MAX_FILE_AGE:J

.field private callback:Lcom/sherdle/universal/ConfigParser$CallBack;

.field private context:Landroid/app/Activity;

.field private facedException:Z

.field private menu:Lcom/sherdle/universal/drawer/SimpleMenu;

.field private sourceLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sherdle/universal/drawer/SimpleMenu;Landroid/app/Activity;Lcom/sherdle/universal/ConfigParser$CallBack;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/32 v0, 0xa4cb800

    .line 73
    iput-wide v0, p0, Lcom/sherdle/universal/ConfigParser;->MAX_FILE_AGE:J

    .line 76
    iput-object p1, p0, Lcom/sherdle/universal/ConfigParser;->sourceLocation:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/sherdle/universal/ConfigParser;->context:Landroid/app/Activity;

    .line 78
    iput-object p2, p0, Lcom/sherdle/universal/ConfigParser;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    .line 79
    iput-object p4, p0, Lcom/sherdle/universal/ConfigParser;->callback:Lcom/sherdle/universal/ConfigParser$CallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/ConfigParser;)Landroid/app/Activity;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sherdle/universal/ConfigParser;->context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/sherdle/universal/ConfigParser;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/ConfigParser;)Lcom/sherdle/universal/drawer/SimpleMenu;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sherdle/universal/ConfigParser;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    return-object p0
.end method

.method static synthetic access$302(Lcom/sherdle/universal/ConfigParser;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/sherdle/universal/ConfigParser;->facedException:Z

    return p1
.end method

.method private static getDrawableByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getJSONFromCache()Lorg/json/JSONArray;
    .locals 8

    const/4 v0, 0x0

    .line 296
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sherdle/universal/ConfigParser;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sherdle/universal/ConfigParser;->CACHE_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 298
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 299
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/32 v4, 0xa4cb800

    add-long v6, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v4, v6, v1

    if-lez v4, :cond_0

    .line 303
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 311
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 307
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static navItemFromJSON(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/sherdle/universal/drawer/NavItem;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "title"

    .line 191
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "provider"

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arguments"

    .line 193
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 196
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 197
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "wordpress"

    .line 202
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    const-class v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    goto/16 :goto_2

    :cond_1
    const-string v5, "facebook"

    .line 204
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    const-class v1, Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    goto/16 :goto_2

    :cond_2
    const-string v5, "rss"

    .line 206
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    const-class v1, Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    goto/16 :goto_2

    :cond_3
    const-string v5, "youtube"

    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    const-class v1, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    goto/16 :goto_2

    :cond_4
    const-string v5, "instagram"

    .line 210
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    const-class v1, Lcom/sherdle/universal/providers/instagram/InstagramFragment;

    goto/16 :goto_2

    :cond_5
    const-string v5, "webview"

    .line 212
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 213
    const-class v1, Lcom/sherdle/universal/providers/web/WebviewFragment;

    goto/16 :goto_2

    :cond_6
    const-string v5, "tumblr"

    .line 214
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 215
    const-class v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;

    goto/16 :goto_2

    :cond_7
    const-string v5, "flickr"

    .line 216
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 217
    const-class v1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;

    goto/16 :goto_2

    :cond_8
    const-string v5, "stream"

    .line 218
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 219
    const-class v1, Lcom/sherdle/universal/providers/tv/TvFragment;

    goto/16 :goto_2

    :cond_9
    const-string v5, "soundcloud"

    .line 220
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "wordpress_audio"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_1

    :cond_a
    const-string v5, "maps"

    .line 223
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 224
    const-class v1, Lcom/sherdle/universal/providers/maps/MapsFragment;

    goto/16 :goto_2

    :cond_b
    const-string v5, "twitter"

    .line 225
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 226
    const-class v1, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;

    goto/16 :goto_2

    :cond_c
    const-string v5, "radio"

    .line 227
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 228
    const-class v1, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;

    goto :goto_2

    :cond_d
    const-string v5, "pinterest"

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 230
    const-class v1, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    goto :goto_2

    :cond_e
    const-string v5, "woocommerce"

    .line 231
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "orders"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 232
    const-class v1, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;

    goto :goto_2

    :cond_f
    const-string v2, "woocommerce"

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 234
    const-class v1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    goto :goto_2

    :cond_10
    const-string v2, "custom"

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 236
    const-class v1, Lcom/sherdle/universal/providers/CustomIntent;

    goto :goto_2

    :cond_11
    const-string v2, "overview"

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 238
    const-class v1, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    goto :goto_2

    .line 240
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid type specified for tab"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_13
    :goto_1
    const-class v2, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    const-string v5, "wordpress_audio"

    .line 222
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "wordpress"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v1, v2

    .line 242
    :goto_2
    new-instance v2, Lcom/sherdle/universal/drawer/NavItem;

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/sherdle/universal/drawer/NavItem;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    const-string v0, "image"

    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "image"

    .line 246
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, "image"

    .line 247
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "image"

    .line 250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "image"

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/ConfigParser;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/sherdle/universal/drawer/NavItem;->setTabIcon(I)V

    goto :goto_3

    :cond_15
    const-string p0, "image"

    .line 253
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/sherdle/universal/drawer/NavItem;->setCategoryImageUrl(Ljava/lang/String;)V

    :cond_16
    :goto_3
    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/ConfigParser;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 90
    sget-object p1, Lcom/sherdle/universal/ConfigParser;->jsonMenu:Lorg/json/JSONArray;

    if-nez p1, :cond_2

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/sherdle/universal/ConfigParser;->sourceLocation:Ljava/lang/String;

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/sherdle/universal/ConfigParser;->getJSONFromCache()Lorg/json/JSONArray;

    move-result-object p1

    sput-object p1, Lcom/sherdle/universal/ConfigParser;->jsonMenu:Lorg/json/JSONArray;

    .line 95
    invoke-direct {p0}, Lcom/sherdle/universal/ConfigParser;->getJSONFromCache()Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "INFO"

    const-string v0, "Loading Menu Config from url."

    .line 96
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/sherdle/universal/ConfigParser;->sourceLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getDataFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sherdle/universal/ConfigParser;->jsonMenu:Lorg/json/JSONArray;

    .line 99
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/ConfigParser;->saveJSONToCache(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "INFO"

    const-string v0, "Loading Menu Config from cache."

    .line 101
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/ConfigParser;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sherdle/universal/ConfigParser;->sourceLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Helper;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sherdle/universal/ConfigParser;->jsonMenu:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    :cond_2
    :goto_0
    sget-object p1, Lcom/sherdle/universal/ConfigParser;->jsonMenu:Lorg/json/JSONArray;

    if-eqz p1, :cond_3

    .line 115
    sget-object p1, Lcom/sherdle/universal/ConfigParser;->jsonMenu:Lorg/json/JSONArray;

    .line 118
    iget-object v0, p0, Lcom/sherdle/universal/ConfigParser;->context:Landroid/app/Activity;

    new-instance v1, Lcom/sherdle/universal/ConfigParser$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/ConfigParser$1;-><init>(Lcom/sherdle/universal/ConfigParser;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string p1, "INFO"

    const-string v0, "JSON Could not be retrieved"

    .line 183
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lcom/sherdle/universal/ConfigParser;->facedException:Z

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/ConfigParser;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/sherdle/universal/ConfigParser;->callback:Lcom/sherdle/universal/ConfigParser$CallBack;

    if-eqz p1, :cond_0

    .line 262
    iget-object p1, p0, Lcom/sherdle/universal/ConfigParser;->callback:Lcom/sherdle/universal/ConfigParser$CallBack;

    iget-boolean v0, p0, Lcom/sherdle/universal/ConfigParser;->facedException:Z

    invoke-interface {p1, v0}, Lcom/sherdle/universal/ConfigParser$CallBack;->configLoaded(Z)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 84
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method public saveJSONToCache(Ljava/lang/String;)V
    .locals 6

    .line 283
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sherdle/universal/ConfigParser;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sherdle/universal/ConfigParser;->CACHE_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 285
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 286
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
