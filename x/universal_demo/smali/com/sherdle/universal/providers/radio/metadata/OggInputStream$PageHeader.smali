.class Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;
.super Ljava/lang/Object;
.source "OggInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageHeader"
.end annotation


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field public streamSerialNumber:J

.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

.field public type:I


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xff

    .line 212
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->laces:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->revision:I

    .line 219
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->type:I

    const-wide/16 v1, 0x0

    .line 220
    iput-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->granulePosition:J

    .line 221
    iput-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->streamSerialNumber:J

    .line 222
    iput-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSequenceNumber:J

    .line 223
    iput-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageChecksum:J

    .line 224
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->pageSegmentCount:I

    .line 225
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->headerSize:I

    .line 226
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$PageHeader;->bodySize:I

    return-void
.end method
