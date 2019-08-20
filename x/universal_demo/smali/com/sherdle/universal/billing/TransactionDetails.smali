.class public Lcom/sherdle/universal/billing/TransactionDetails;
.super Ljava/lang/Object;
.source "TransactionDetails.java"


# instance fields
.field public final orderId:Ljava/lang/String;

.field public final productId:Ljava/lang/String;

.field public final purchaseInfo:Lcom/sherdle/universal/billing/PurchaseInfo;

.field public final purchaseTime:Ljava/util/Date;

.field public final purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/billing/PurchaseInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/sherdle/universal/billing/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseInfo:Lcom/sherdle/universal/billing/PurchaseInfo;

    const-string p1, "productId"

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/billing/TransactionDetails;->productId:Ljava/lang/String;

    const-string p1, "orderId"

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/billing/TransactionDetails;->orderId:Ljava/lang/String;

    const-string p1, "purchaseToken"

    .line 40
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseToken:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/util/Date;

    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s purchased at %s(%s). Token: %s, Signature: %s"

    const/4 v1, 0x5

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sherdle/universal/billing/TransactionDetails;->productId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseTime:Ljava/util/Date;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/TransactionDetails;->orderId:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseToken:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseInfo:Lcom/sherdle/universal/billing/PurchaseInfo;

    iget-object v2, v2, Lcom/sherdle/universal/billing/PurchaseInfo;->signature:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
