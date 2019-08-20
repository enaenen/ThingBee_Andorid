.class final Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;
.super Ljava/lang/Object;
.source "ShoutcastDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;
.implements Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;
    }
.end annotation


# static fields
.field private static final AAC:Ljava/lang/String; = "audio/aac"

.field private static final AACP:Ljava/lang/String; = "audio/aacp"

.field private static final ICY_METADATA:Ljava/lang/String; = "Icy-Metadata"

.field private static final ICY_METAINT:Ljava/lang/String; = "icy-metaint"

.field private static final MP3:Ljava/lang/String; = "audio/mpeg"

.field private static final OGG:Ljava/lang/String; = "application/ogg"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final cacheControl:Lokhttp3/CacheControl;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

.field private opened:Z

.field private final requestProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lokhttp3/Response;

.field private responseByteStream:Ljava/io/InputStream;

.field private final shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;)V

    return-void
.end method

.method private constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;",
            ">;",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 111
    invoke-direct/range {v0 .. v6}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;Lokhttp3/CacheControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;",
            ">;",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;",
            "Lokhttp3/CacheControl;",
            ")V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Call$Factory;

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->callFactory:Lokhttp3/Call$Factory;

    .line 129
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->userAgent:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    .line 131
    iput-object p4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 132
    iput-object p5, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

    .line 133
    iput-object p6, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->cacheControl:Lokhttp3/CacheControl;

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    .line 380
    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->responseByteStream:Ljava/io/InputStream;

    return-void
.end method

.method private getInputStream(Lokhttp3/Response;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 277
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->setIcyHeader(Lokhttp3/Headers;)V

    .line 279
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4a6817b0

    if-eq v2, v3, :cond_3

    const v3, 0xb26968a

    if-eq v2, v3, :cond_2

    const v3, 0x59ac3b26

    if-eq v2, v3, :cond_1

    const v3, 0x59b1e81e

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v2, "audio/aacp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v2, "audio/aac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "application/ogg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    move-object p1, v1

    goto :goto_3

    .line 288
    :pswitch_0
    new-instance p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

    invoke-direct {p1, v1, p0}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;-><init>(Ljava/io/InputStream;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V

    goto :goto_3

    :pswitch_1
    const-string v0, "icy-metaint"

    .line 284
    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/16 p1, 0x2000

    goto :goto_2

    :cond_5
    const-string v0, "icy-metaint"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 285
    :goto_2
    new-instance v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V

    move-object p1, v0

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lokhttp3/Request;
    .locals 6

    .line 254
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 256
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 257
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 258
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->cacheControl:Lokhttp3/CacheControl;

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->cacheControl:Lokhttp3/CacheControl;

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 265
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "User-Agent"

    .line 266
    iget-object v3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-nez v1, :cond_3

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    .line 268
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 270
    :cond_3
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 271
    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->postBody:[B

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 273
    :cond_4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 265
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private readInternal([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 350
    :cond_0
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, -0x1

    if-eqz v4, :cond_2

    .line 351
    iget-wide v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToRead:J

    iget-wide v6, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesRead:J

    sub-long v8, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-nez v1, :cond_1

    return v0

    :cond_1
    int-to-long v4, p3

    .line 355
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->responseByteStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 360
    iget-wide p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToRead:J

    cmp-long p3, p1, v2

    if-eqz p3, :cond_3

    .line 362
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    return v0

    .line 367
    :cond_4
    iget-wide p2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long v2, p2, v0

    iput-wide v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesRead:J

    .line 368
    iget-object p2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz p2, :cond_5

    .line 369
    iget-object p2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    :cond_5
    return p1
.end method

.method private setIcyHeader(Lokhttp3/Headers;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$1;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    const-string v1, "icy-name"

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->station:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    const-string v1, "icy-url"

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->url:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    const-string v1, "icy-genre"

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->genre:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    const-string v1, "icy-channels"

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->channels:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    const-string v1, "icy-br"

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->bitrate:Ljava/lang/String;

    return-void
.end method

.method private skipInternal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesSkipped:J

    iget-wide v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToSkip:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    .line 310
    new-array v0, v0, [B

    .line 313
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesSkipped:J

    iget-wide v3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToSkip:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 314
    iget-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToSkip:J

    iget-wide v3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesSkipped:J

    sub-long v5, v1, v3

    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 315
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->responseByteStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 316
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 320
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 322
    :cond_3
    iget-wide v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesSkipped:J

    int-to-long v4, v1

    add-long v6, v2, v4

    iput-wide v6, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesSkipped:J

    .line 323
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0, v1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0

    .line 329
    :cond_4
    sget-object v1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearAllRequestProperties()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 241
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->opened:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->opened:Z

    .line 243
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->closeConnectionQuietly()V

    :cond_1
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onMetadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 394
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    iget-object v5, v1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->channels:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    iget-object v6, v1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->bitrate:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    iget-object v7, v1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->station:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    iget-object v8, v1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->genre:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->icyHeader:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;

    iget-object v9, v1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource$IcyHeader;->url:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;->onMetadataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesRead:J

    .line 175
    iput-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesSkipped:J

    const-string v2, "Icy-Metadata"

    const-string v3, "1"

    .line 176
    invoke-virtual {p0, v2, v3}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->makeRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)Lokhttp3/Request;

    move-result-object v2

    const/4 v3, 0x1

    .line 179
    :try_start_0
    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->callFactory:Lokhttp3/Call$Factory;

    invoke-interface {v4, v2}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    iput-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    .line 180
    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-direct {p0, v4}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->getInputStream(Lokhttp3/Response;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->responseByteStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    .line 189
    iget-object v5, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_1

    .line 190
    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    .line 191
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->closeConnectionQuietly()V

    .line 192
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v1, v4, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/16 p1, 0x1a0

    if-ne v4, p1, :cond_0

    .line 195
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 197
    :cond_0
    throw v1

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 202
    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 203
    :goto_0
    iget-object v5, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    invoke-interface {v5, v2}, Lcom/google/android/exoplayer2/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 204
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->closeConnectionQuietly()V

    .line 205
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v2, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v0

    :cond_3
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_4

    .line 211
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_4

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    :cond_4
    iput-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToSkip:J

    .line 214
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 215
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToRead:J

    goto :goto_1

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6

    .line 218
    iget-wide v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToSkip:J

    sub-long v6, v0, v4

    move-wide v4, v6

    :cond_6
    iput-wide v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToRead:J

    .line 221
    :goto_1
    iput-boolean v3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->opened:Z

    .line 222
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v0, :cond_7

    .line 223
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 226
    :cond_7
    iget-wide v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->bytesToRead:J

    return-wide v0

    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to connect to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 232
    :try_start_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->skipInternal()V

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->readInternal([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 235
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw p2
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;->requestProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
