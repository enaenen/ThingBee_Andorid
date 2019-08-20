.class Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;
.super Ljava/lang/Object;
.source "TimestampServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Timer"
.end annotation


# instance fields
.field private final rand:Ljava/util/Random;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;->rand:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method getMilis()Ljava/lang/Long;
    .locals 2

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method getRandomInteger()Ljava/lang/Integer;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/interceptor/TimestampServiceImpl$Timer;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
