.class public Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;
.super Ljava/lang/Object;
.source "TimestampServiceImpl.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;
    }
.end annotation


# instance fields
.field private timer:Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->timer:Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;

    return-void
.end method

.method private getTs()Ljava/lang/Long;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->timer:Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;->getMilis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 6

    .line 25
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->getTs()Ljava/lang/Long;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->timer:Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;->getRandomInteger()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestampInSeconds()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->getTs()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setTimer(Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;->timer:Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;

    return-void
.end method
