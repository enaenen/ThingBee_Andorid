.class public Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudParser;
.super Ljava/lang/Object;
.source "SoundCloudParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundCloudParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parsingCommentObject(Lorg/json/JSONObject;)Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "created_at"

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy/MM/dd hh:mm:ss Z"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 101
    :try_start_2
    invoke-static {v1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    move-object v9, v0

    :goto_0
    const-string v1, "user_id"

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v1, "track_id"

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v1, "timestamp"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "body"

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "user"

    .line 109
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "username"

    .line 110
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "avatar_url"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 113
    new-instance p0, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;-><init>(JJJLjava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 117
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static parsingListCommentObject(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;",
            ">;"
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 128
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudParser;->parsingCommentObject(Lorg/json/JSONObject;)Lcom/sherdle/universal/providers/soundcloud/api/object/CommentObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 138
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parsingListTrackObject(Lorg/json/JSONArray;Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 76
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudParser;->parsingTrackObject(Lorg/json/JSONObject;Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;)Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 87
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parsingTrackObject(Lorg/json/JSONObject;Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;)Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;
    .locals 30

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v3, "id"

    .line 23
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v3, "created_at"

    .line 24
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy/MM/dd hh:mm:ss Z"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 30
    :try_start_2
    invoke-static {v3}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    move-object v7, v2

    :goto_0
    const-string v3, "user_id"

    .line 33
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v3, "duration"

    .line 34
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v3, "sharing"

    .line 35
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "tag_list"

    .line 36
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "genre"

    .line 37
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "title"

    .line 38
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "description"

    .line 39
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "user"

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "username"

    .line 42
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "avatar_url"

    .line 43
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "permalink_url"

    .line 44
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "artwork_url"

    .line 45
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v3, "waveform_url"

    .line 46
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v3, "playback_count"

    .line 47
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v3, "favoritings_count"

    .line 48
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    const-string v3, "comment_count"

    .line 49
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    const-string v3, "streamable"

    .line 50
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "https://api.soundcloud.com/tracks/%1$s/stream?client_id=%2$s"

    const/4 v4, 0x2

    .line 51
    new-array v4, v4, [Ljava/lang/Object;

    const/16 v28, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v4, v28

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;->getClientId()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v4, v28

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 53
    new-instance v3, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-object v4, v3

    invoke-direct/range {v4 .. v28}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;-><init>(JLjava/util/Date;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V

    .line 56
    invoke-virtual {v3, v1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->setStreamAble(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 62
    invoke-static {v1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_0
    return-object v2
.end method
