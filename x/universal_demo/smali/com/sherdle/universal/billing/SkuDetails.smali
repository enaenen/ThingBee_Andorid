.class public Lcom/sherdle/universal/billing/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field public final currency:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final isSubscription:Z

.field public final priceText:Ljava/lang/String;

.field public final priceValue:Ljava/lang/Double;

.field public final productId:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "inapp"

    :cond_0
    const-string v1, "productId"

    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/billing/SkuDetails;->productId:Ljava/lang/String;

    const-string v1, "title"

    .line 42
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/billing/SkuDetails;->title:Ljava/lang/String;

    const-string v1, "description"

    .line 43
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/billing/SkuDetails;->description:Ljava/lang/String;

    const-string v1, "subs"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sherdle/universal/billing/SkuDetails;->isSubscription:Z

    const-string v0, "price_currency_code"

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/billing/SkuDetails;->currency:Ljava/lang/String;

    const-string v0, "price_amount_micros"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/billing/SkuDetails;->priceValue:Ljava/lang/Double;

    const-string v0, "price"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/billing/SkuDetails;->priceText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s(%s) %f in %s (%s)"

    const/4 v1, 0x6

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sherdle/universal/billing/SkuDetails;->productId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/SkuDetails;->title:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/SkuDetails;->description:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/SkuDetails;->priceValue:Ljava/lang/Double;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/SkuDetails;->currency:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/SkuDetails;->priceText:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
