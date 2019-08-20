.class public final Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "ShoutcastDataSourceFactory.java"


# instance fields
.field private final cacheControl:Lokhttp3/CacheControl;

.field private final callFactory:Lokhttp3/Call$Factory;

.field private final shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

.field private final transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method private constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;Lokhttp3/CacheControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;",
            "Lokhttp3/CacheControl;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    .line 48
    iput-object p2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 50
    iput-object p4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

    .line 51
    iput-object p5, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    return-void
.end method


# virtual methods
.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 7

    .line 56
    new-instance p1, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->transferListener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v5, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->shoutcastMetadataListener:Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;

    iget-object v6, p0, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;Lokhttp3/CacheControl;)V

    return-object p1
.end method
