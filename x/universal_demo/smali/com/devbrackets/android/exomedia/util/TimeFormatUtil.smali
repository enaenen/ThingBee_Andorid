.class public Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;
.super Ljava/lang/Object;
.source "TimeFormatUtil.java"


# static fields
.field private static formatBuilder:Ljava/lang/StringBuilder;

.field private static formatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatBuilder:Ljava/lang/StringBuilder;

    .line 10
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatMs(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "--:--"

    return-object p0

    :cond_0
    const-wide/32 v2, 0xea60

    .line 26
    rem-long v4, p0, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    .line 27
    rem-long v8, p0, v6

    div-long/2addr v8, v2

    const-wide/32 v2, 0x5265c00

    .line 28
    rem-long/2addr p0, v2

    div-long/2addr p0, v6

    .line 30
    sget-object v2, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v2, p0, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lez v2, :cond_1

    .line 32
    sget-object v2, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatter:Ljava/util/Formatter;

    const-string v6, "%d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v0

    invoke-virtual {v2, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatter:Ljava/util/Formatter;

    const-string p1, "%02d:%02d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
