.class Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;
.super Ljava/lang/Object;
.source "OggInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdHeader"
.end annotation


# instance fields
.field public audioChannels:I

.field public audioSampleRate:J

.field public bitRateMaximum:I

.field public bitRateMinimum:I

.field public bitRateNominal:I

.field public blockSize0:I

.field public blockSize1:I

.field final synthetic this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

.field public version:J


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->this$0:Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$1;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;-><init>(Lcom/sherdle/universal/providers/radio/metadata/OggInputStream;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->audioChannels:I

    const-wide/16 v1, 0x0

    .line 244
    iput-wide v1, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->audioSampleRate:J

    .line 245
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->bitRateMaximum:I

    .line 246
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->bitRateNominal:I

    .line 247
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->bitRateMinimum:I

    .line 248
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->blockSize0:I

    .line 249
    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/OggInputStream$IdHeader;->blockSize1:I

    return-void
.end method
