.class public Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;
.super Ljava/lang/Object;
.source "OAuthInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$Builder;
    }
.end annotation


# static fields
.field private static final BASIC_CONSUMER_KEY:Ljava/lang/String; = "consumer_key"

.field private static final BASIC_CONSUMER_SECRET:Ljava/lang/String; = "consumer_secret"

.field private static final OAUTH_CONSUMER_KEY:Ljava/lang/String; = "oauth_consumer_key"

.field private static final OAUTH_NONCE:Ljava/lang/String; = "oauth_nonce"

.field private static final OAUTH_SIGNATURE:Ljava/lang/String; = "oauth_signature"

.field private static final OAUTH_SIGNATURE_METHOD:Ljava/lang/String; = "oauth_signature_method"

.field private static final OAUTH_SIGNATURE_METHOD_VALUE:Ljava/lang/String; = "HMAC-SHA1"

.field private static final OAUTH_TIMESTAMP:Ljava/lang/String; = "oauth_timestamp"

.field private static final OAUTH_VERSION:Ljava/lang/String; = "oauth_version"

.field private static final OAUTH_VERSION_VALUE:Ljava/lang/String; = "1.0"


# instance fields
.field private final OAUTH:Z

.field private final consumerKey:Ljava/lang/String;

.field private final consumerSecret:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->OAUTH:Z

    .line 37
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->consumerKey:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->consumerSecret:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    const-string v2, "URL"

    .line 48
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "URL"

    .line 49
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "encodedpath"

    .line 50
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "query"

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "path"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "encodedQuery"

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "method"

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;

    invoke-direct {v2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;-><init>()V

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->getNonce()Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;

    invoke-direct {v3}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;-><init>()V

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->getTimestampInSeconds()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nonce"

    .line 60
    invoke-static {v4, v2}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "time"

    .line 61
    invoke-static {v4, v3}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ENCODED PATH"

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->urlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "firstBaseString"

    .line 67
    invoke-static {v5, v4}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_consumer_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->consumerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_nonce="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_signature_method=HMAC-SHA1&oauth_timestamp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_version=1.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 74
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oauth_consumer_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->consumerKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_nonce="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_signature_method=HMAC-SHA1&oauth_timestamp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&oauth_version=1.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    :goto_0
    new-instance v6, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;

    invoke-direct {v6}, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;-><init>()V

    .line 79
    invoke-virtual {v6, v5}, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;->addQuerystring(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;->sort()Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;->asOauthBaseString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Sorted"

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "00--"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;->sort()Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sherdle/universal/providers/woocommerce/interceptor/ParameterList;->asOauthBaseString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "%3F"

    .line 85
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v6, "iff"

    const-string v7, "yess iff"

    .line 86
    invoke-static {v6, v7}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%26"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->urlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    new-instance v5, Lcom/sherdle/universal/providers/woocommerce/interceptor/HMACSha1SignatureService;

    invoke-direct {v5}, Lcom/sherdle/universal/providers/woocommerce/interceptor/HMACSha1SignatureService;-><init>()V

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->consumerSecret:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v4, v6, v7}, Lcom/sherdle/universal/providers/woocommerce/interceptor/HMACSha1SignatureService;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Signature"

    .line 93
    invoke-static {v5, v4}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v5, "oauth_signature_method"

    const-string v6, "HMAC-SHA1"

    .line 96
    invoke-virtual {v1, v5, v6}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v5, "oauth_consumer_key"

    iget-object v6, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/OAuthInterceptor;->consumerKey:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v5, v6}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v5, "oauth_version"

    const-string v6, "1.0"

    .line 98
    invoke-virtual {v1, v5, v6}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v5, "oauth_timestamp"

    .line 99
    invoke-virtual {v1, v5, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v3, "oauth_nonce"

    .line 100
    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "oauth_signature"

    .line 101
    invoke-virtual {v1, v2, v4}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 110
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public urlEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "UTF-8"

    .line 167
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "TEST"

    .line 168
    invoke-static {v0, p1}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 170
    :goto_0
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
