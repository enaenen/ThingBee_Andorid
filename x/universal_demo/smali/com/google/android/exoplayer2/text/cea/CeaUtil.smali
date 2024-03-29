.class public final Lcom/google/android/exoplayer2/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE:I = 0x31

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field private static final USER_DATA_TYPE_CODE:I = 0x3

.field private static final USER_ID:I = 0x47413934


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 12

    .line 46
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 47
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    .line 48
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 50
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    invoke-static {v0, v2, p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->isSeiMessageCea608(IILcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 57
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 61
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v0, v0, 0x3

    .line 65
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 66
    array-length v10, p3

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v3, p3, v11

    .line 67
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 68
    invoke-interface {v3, p2, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p0

    move v7, v0

    .line 69
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0xa

    sub-int/2addr v2, v0

    .line 72
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_3
    :goto_2
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static isSeiMessageCea608(IILcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    const/16 p0, 0x8

    if-ge p1, p0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    .line 116
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 118
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 119
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 120
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 p0, 0xb5

    if-ne p1, p0, :cond_1

    const/16 p0, 0x31

    if-ne v1, p0, :cond_1

    const p0, 0x47413934

    if-ne v2, p0, :cond_1

    const/4 p0, 0x3

    if-ne v3, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private static readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    const/4 v0, 0x0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0
.end method
