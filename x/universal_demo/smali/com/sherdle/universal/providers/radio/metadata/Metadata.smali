.class public Lcom/sherdle/universal/providers/radio/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# instance fields
.field private final artist:Ljava/lang/String;

.field private final bitrate:Ljava/lang/String;

.field private final channels:Ljava/lang/String;

.field private final genre:Ljava/lang/String;

.field private final show:Ljava/lang/String;

.field private final song:Ljava/lang/String;

.field private final station:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->artist:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->song:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->show:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->channels:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->bitrate:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->station:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->genre:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->bitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->channels:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getShow()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->show:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->url:Ljava/lang/String;

    return-object v0
.end method
