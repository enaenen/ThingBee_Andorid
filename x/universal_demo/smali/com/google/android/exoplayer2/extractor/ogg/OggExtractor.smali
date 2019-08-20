.class public Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object p0
.end method


# virtual methods
.method getStreamReader()Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    return-object v0
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 80
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 82
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->seek(JJ)V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, p1, v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v3, 0x8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 60
    iget-object v4, v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 62
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;->verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/FlacReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;->verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/VorbisReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->resetPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 67
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;->streamReader:Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0

    :catch_0
    return v0
.end method
