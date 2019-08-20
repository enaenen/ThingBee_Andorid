.class final Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;
.super Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;
.source "OggInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;,
        Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;,
        Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;,
        Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sherdle.universal.providers.radio.metadata.OggInputStream"


# instance fields
.field private final commentHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;

.field private final headerArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final holder:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;

.field private final idHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;

.field private final listener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

.field private final packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pageHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    new-instance p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;-><init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->holder:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;

    .line 31
    new-instance p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$1;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->idHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;

    .line 32
    new-instance p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->commentHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;

    .line 33
    new-instance p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;

    invoke-direct {p1, p0, v0}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$1;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->pageHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;

    .line 35
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v0, 0xfe01

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 36
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x11a

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->headerArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 42
    iput-object p2, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->listener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

    return-void
.end method

.method private static calculatePacketSize(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;ILcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;)V
    .locals 3

    const/4 v0, 0x0

    .line 92
    iput v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->segmentCount:I

    .line 93
    iput v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->size:I

    .line 96
    :cond_0
    iget v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->segmentCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->laces:[I

    iget v1, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->segmentCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->segmentCount:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    .line 98
    iget v1, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->size:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->size:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method private static metadataReceived(Ljava/lang/String;Ljava/lang/String;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V
    .locals 3

    .line 194
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->TAG:Ljava/lang/String;

    const-string v1, "Metadata received: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Song: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v0, ""

    .line 198
    invoke-interface {p2, p0, p1, v0}, Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;->onMetadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static peekPacket(Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    :cond_0
    const/4 v4, 0x1

    if-nez v2, :cond_6

    if-gez v3, :cond_3

    .line 66
    invoke-static {p0, p2, p3}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->unpackPageHeader(Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 71
    :cond_1
    iget v3, p3, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->type:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_2

    .line 72
    invoke-static {p3, v1, p4}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->calculatePacketSize(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;ILcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;)V

    .line 73
    iget v3, p4, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->segmentCount:I

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 79
    :cond_3
    :goto_1
    invoke-static {p3, v3, p4}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->calculatePacketSize(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;ILcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;)V

    .line 80
    iget v5, p4, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->segmentCount:I

    add-int/2addr v3, v5

    .line 81
    iget v5, p4, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->size:I

    if-lez v5, :cond_5

    .line 82
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    iget v6, p4, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->size:I

    invoke-virtual {p0, v2, v5, v6}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekFully([BII)V

    .line 83
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    iget v5, p4, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;->size:I

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 84
    iget-object v2, p3, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->laces:[I

    add-int/lit8 v5, v3, -0x1

    aget v2, v2, v5

    const/16 v5, 0xff

    if-eq v2, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 64
    :cond_5
    iget v4, p3, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_6
    return v4
.end method

.method private static unPackComment(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "="

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "="

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 185
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 186
    aget-object v0, p0, v3

    aget-object p0, p0, v2

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_0
    array-length v0, p0

    if-ne v0, v2, :cond_1

    .line 188
    aget-object p0, p0, v3

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static unpackCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V
    .locals 7

    .line 156
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->reset()V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->vendor:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->vendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    add-int/lit8 v0, v0, 0x4

    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-gez v6, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v0, v0, 0x4

    .line 172
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    iget-object v5, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->comments:Ljava/util/HashMap;

    invoke-static {v4, v5}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->unPackComment(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iput v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->length:I

    .line 177
    iget-object p0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->comments:Ljava/util/HashMap;

    const-string v0, "ARTIST"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;->comments:Ljava/util/HashMap;

    const-string v0, "TITLE"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->metadataReceived(Ljava/lang/String;Ljava/lang/String;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V

    :cond_1
    return-void
.end method

.method private static unpackIdHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;)V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->reset()V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->version:J

    .line 142
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->audioChannels:I

    .line 143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->audioSampleRate:J

    .line 144
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->bitRateMaximum:I

    .line 145
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->bitRateNominal:I

    .line 146
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->bitRateMinimum:I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 v0, p0, 0xf

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 149
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->blockSize0:I

    shr-int/lit8 p0, p0, 0x4

    int-to-double v0, p0

    .line 150
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p0, v0

    iput p0, p1, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->blockSize1:I

    :cond_0
    return-void
.end method

.method private static unpackPageHeader(Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 107
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 108
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->reset()V

    .line 109
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v1, 0x1b

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekFully([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v4, 0x4f

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v4, 0x67

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v4, 0x53

    if-ne v0, v4, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->revision:I

    .line 112
    iget v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->revision:I

    if-eqz v0, :cond_0

    return v3

    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->type:I

    .line 116
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->granulePosition:J

    .line 117
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->streamSerialNumber:J

    .line 118
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSequenceNumber:J

    .line 119
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageChecksum:J

    .line 120
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    .line 121
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 122
    iget v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->headerSize:I

    .line 123
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v1, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->peekFully([BII)V

    .line 125
    :goto_0
    iget p0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    if-ge v3, p0, :cond_1

    .line 126
    iget-object p0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->laces:[I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    aput v0, p0, v3

    .line 127
    iget p0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->bodySize:I

    iget-object v0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->laces:[I

    aget v0, v0, v3

    add-int/2addr p0, v0

    iput p0, p2, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->bodySize:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v3
.end method


# virtual methods
.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->headerArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->pageHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;

    iget-object v3, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->holder:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->peekPacket(Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PacketInfoHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->idHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->unpackIdHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;)V

    .line 50
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->commentHeader:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;

    iget-object v2, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->listener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

    invoke-static {v0, v1, v2}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;->unpackCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$CommentHeader;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 57
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sherdle/universal/providers/radio/metadata/PeekInputStream;->read([BII)I

    move-result p1

    return p1
.end method
