.class public Lcom/sherdle/universal/providers/radio/parser/UrlParser;
.super Ljava/lang/Object;
.source "UrlParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 1

    .line 143
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".FLAC"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const-string v1, ".MP3"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    const-string v1, ".WAV"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    const-string v1, ".M4A"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    :cond_3
    const-string v1, ".PLS"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p0

    :cond_4
    const-string v1, ".M3U"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 50
    new-instance v0, Lcom/sherdle/universal/providers/radio/parser/M3UParser;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/radio/parser/M3UParser;-><init>()V

    .line 51
    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/radio/parser/M3UParser;->getRawUrl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 54
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    const-string v1, ".ASX"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    new-instance v0, Lcom/sherdle/universal/providers/radio/parser/ASXParser;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/radio/parser/ASXParser;-><init>()V

    .line 60
    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/radio/parser/ASXParser;->getRawUrl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 68
    :cond_6
    invoke-static {p0}, Lcom/sherdle/universal/providers/radio/parser/UrlParser;->getConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "Content-Disposition"

    .line 71
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "INFO"

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Headers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_7
    if-eqz v1, :cond_8

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "M3U"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 82
    new-instance v1, Lcom/sherdle/universal/providers/radio/parser/M3UParser;

    invoke-direct {v1}, Lcom/sherdle/universal/providers/radio/parser/M3UParser;-><init>()V

    .line 83
    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/radio/parser/M3UParser;->getRawUrl(Ljava/net/URLConnection;)Ljava/util/LinkedList;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 86
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_8
    if-eqz v3, :cond_9

    const-string v0, "AUDIO/X-SCPLS"

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    if-eqz v3, :cond_b

    const-string v0, "VIDEO/X-MS-ASF"

    .line 102
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 104
    new-instance v0, Lcom/sherdle/universal/providers/radio/parser/ASXParser;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/radio/parser/ASXParser;-><init>()V

    .line 105
    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/radio/parser/ASXParser;->getRawUrl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 108
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 110
    :cond_a
    new-instance v0, Lcom/sherdle/universal/providers/radio/parser/PLSParser;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/radio/parser/PLSParser;-><init>()V

    .line 111
    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/radio/parser/PLSParser;->getRawUrl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_b
    if-eqz v3, :cond_c

    const-string v0, "AUDIO/MPEG"

    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object p0

    :cond_c
    if-eqz v3, :cond_d

    const-string v0, "AUDIO/X-MPEGURL"

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    new-instance v0, Lcom/sherdle/universal/providers/radio/parser/M3UParser;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/radio/parser/M3UParser;-><init>()V

    .line 124
    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/radio/parser/M3UParser;->getRawUrl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_d
    return-object p0
.end method
