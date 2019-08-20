.class Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;
.super Ljava/io/FilterInputStream;
.source "IcyInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sherdle.universal.providers.radio.metadata.IcyInputStream"


# instance fields
.field private final characterEncoding:Ljava/lang/String;

.field private final interval:I

.field private final metadataListener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

.field private remaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;-><init>(Ljava/io/InputStream;ILjava/lang/String;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    iput p2, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->interval:I

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "UTF-8"

    .line 54
    :goto_0
    iput-object p3, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->characterEncoding:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->metadataListener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

    .line 56
    iput p2, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    return-void
.end method

.method private getMetadata()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget v0, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->interval:I

    iput v0, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    .line 103
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v0, v0, 0x10

    .line 110
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, v1, v2, v0}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->readFully([BII)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 116
    aget-byte v4, v1, v3

    if-nez v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_2
    :goto_1
    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->characterEncoding:Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, v3}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->parseMetadata(Ljava/lang/String;)V

    return-void

    .line 128
    :catch_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->TAG:Ljava/lang/String;

    const-string v1, "Cannot convert bytes to String"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private metadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 162
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->TAG:Ljava/lang/String;

    const-string v1, "Metadata received: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Artist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget-object v0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Song: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->metadataListener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->metadataListener:Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sherdle/universal/providers/radio/metadata/MetadataListener;->onMetadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseMetadata(Ljava/lang/String;)V
    .locals 4

    const-string v0, "StreamTitle=\'([^;]*)\'"

    .line 143
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 148
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    aget-object v0, p1, v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    aget-object p1, p1, v3

    invoke-direct {p0, v0, v1, p1}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->metadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_1
    aget-object v1, p1, v3

    aget-object p1, p1, v0

    invoke-direct {p0, v1, p1, v2}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->metadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_2
    aget-object p1, p1, v3

    invoke-direct {p0, v2, v2, p1}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->metadataReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFully([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    if-lez p3, :cond_0

    .line 92
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 63
    iget v1, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->getMetadata()V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget v1, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    if-ge v1, p3, :cond_0

    iget p3, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 74
    iget p2, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    if-ne p2, p1, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->getMetadata()V

    goto :goto_0

    .line 77
    :cond_1
    iget p2, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sherdle/universal/providers/radio/metadata/IcyInputStream;->remaining:I

    :goto_0
    return p1
.end method
