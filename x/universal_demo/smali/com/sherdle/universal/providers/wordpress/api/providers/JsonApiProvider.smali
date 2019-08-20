.class public Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;
.super Ljava/lang/Object;
.source "JsonApiProvider.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;


# static fields
.field private static final API_LOC:Ljava/lang/String; = "/?json="

.field private static final API_LOC_FRIENDLY:Ljava/lang/String; = "/api/"

.field private static final PARAMS:Ljava/lang/String; = "date_format=U&exclude=comments,categories,custom_fields"

.field private static final TIME_CORRECT:I = 0x0

.field public static final USE_WP_FRIENDLY:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiLoc()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/"

    return-object v0
.end method

.method public static getParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "?"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPostUrl(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getApiLoc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "get_post"

    .line 275
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "post_id="

    .line 276
    invoke-static {p2}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static itemFromJsonObject(Lorg/json/JSONObject;)Lcom/sherdle/universal/providers/wordpress/PostItem;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/PostItem;

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;-><init>(Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;)V

    const-string v1, "title"

    .line 196
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setTitle(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/util/Date;

    const-string v2, "date"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    add-long v6, v2, v4

    const-wide/16 v2, 0x3e8

    mul-long v6, v6, v2

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setDate(Ljava/util/Date;)V

    const-string v1, "id"

    .line 199
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setId(Ljava/lang/Long;)V

    const-string v1, "url"

    .line 200
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setUrl(Ljava/lang/String;)V

    const-string v1, "content"

    .line 201
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setContent(Ljava/lang/String;)V

    const-string v1, "author"

    .line 202
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "author"

    .line 203
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/json/JSONArray;

    .line 205
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 206
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 209
    :cond_0
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "name"

    .line 210
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "name"

    .line 212
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setAuthor(Ljava/lang/String;)V

    :cond_1
    const-string v1, "tags"

    .line 216
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "tags"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "tags"

    .line 217
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "slug"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setTag(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    const-string v1, "thumbnail"

    .line 221
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "thumbnail"

    .line 222
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 224
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_3
    const-string v1, "attachments"

    .line 228
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "attachments"

    .line 231
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 235
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 236
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "images"

    .line 239
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "images"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v4, "images"

    .line 241
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "post-thumbnail"

    .line 242
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "images"

    .line 244
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "post-thumbnail"

    .line 245
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    .line 248
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v4, "images"

    .line 249
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "thumbnail"

    .line 250
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "images"

    .line 252
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "thumbnail"

    .line 253
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    .line 255
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    :cond_5
    :goto_1
    new-instance v4, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    const-string v5, "url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mime_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v6, v3, v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v4}, Lcom/sherdle/universal/providers/wordpress/PostItem;->addAttachment(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getCategories(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getApiLoc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GET_CATEGORY_INDEX"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "categories"

    .line 114
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "categories"

    .line 119
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    const/4 v2, 0x0

    .line 120
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    if-nez v3, :cond_1

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 123
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 124
    new-instance v5, Lcom/sherdle/universal/providers/wordpress/CategoryItem;

    const-string v6, "slug"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "post_count"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, Lcom/sherdle/universal/providers/wordpress/CategoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, v0

    .line 128
    :goto_1
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2
    if-nez v3, :cond_3

    return-object v0

    .line 133
    :cond_3
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider$1;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider$1;-><init>(Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;)V

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xf

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public getCategoryPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-static {}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getApiLoc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "get_category_posts"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "date_format=U&exclude=comments,categories,custom_fields"

    .line 80
    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&count="

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xf

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&category_slug="

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRecentPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/lang/String;
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getApiLoc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "get_recent_posts"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "date_format=U&exclude=comments,categories,custom_fields"

    .line 47
    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&count="

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xf

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSearchPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getApiLoc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "get_search_results"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "date_format=U&exclude=comments,categories,custom_fields"

    .line 96
    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&count="

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xf

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&search="

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    iget-object v1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getApiLoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "get_tag_posts"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date_format=U&exclude=comments,categories,custom_fields"

    .line 61
    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&count="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->simpleMode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "&tag_slug="

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&page="

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parsePostsFromUrl(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-static {p2}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "pages"

    .line 158
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->pages:Ljava/lang/Integer;

    const-string v1, "posts"

    .line 161
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "posts"

    .line 162
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    .line 166
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v2, v3, :cond_2

    .line 168
    :try_start_2
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    invoke-static {v3}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;->itemFromJsonObject(Lorg/json/JSONObject;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v3

    .line 173
    new-instance v4, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;

    iget-object v5, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-direct {v4, v3, v5, v0}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;-><init>(Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;)V

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->start()V

    .line 175
    invoke-virtual {v3}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->ignoreId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "INFO"

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has been skipped due to exception!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v3}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 186
    :goto_2
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    return-object v0
.end method
