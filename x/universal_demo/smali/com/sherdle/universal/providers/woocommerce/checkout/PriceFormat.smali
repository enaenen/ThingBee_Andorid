.class public Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;
.super Ljava/lang/Object;
.source "PriceFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDecimal(Ljava/lang/Float;)Ljava/lang/String;
    .locals 2

    .line 27
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->priceWithoutDecimal(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->priceWithDecimal(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->priceWithoutDecimal(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPrice(Ljava/lang/Float;)Ljava/lang/String;
    .locals 3

    .line 37
    invoke-static {}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getCurrencyFormat()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatDecimal(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static priceWithDecimal(Ljava/lang/Float;)Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static priceWithoutDecimal(Ljava/lang/Float;)Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
