.class public Lcom/sherdle/universal/billing/PurchaseInfo;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;,
        Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;
    }
.end annotation


# instance fields
.field public final responseData:Ljava/lang/String;

.field public final signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sherdle/universal/billing/PurchaseInfo;->responseData:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/sherdle/universal/billing/PurchaseInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public static getPurchaseState(I)Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 69
    sget-object p0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Canceled:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object p0

    .line 67
    :pswitch_0
    sget-object p0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->SubscriptionExpired:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object p0

    .line 65
    :pswitch_1
    sget-object p0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Refunded:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object p0

    .line 63
    :pswitch_2
    sget-object p0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Canceled:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object p0

    .line 61
    :pswitch_3
    sget-object p0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->PurchasedSuccessfully:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parseResponseData()Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;
    .locals 8

    const/4 v0, 0x0

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/sherdle/universal/billing/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;-><init>(Lcom/sherdle/universal/billing/PurchaseInfo;)V

    const-string v3, "orderId"

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->orderId:Ljava/lang/String;

    const-string v3, "packageName"

    .line 78
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->packageName:Ljava/lang/String;

    const-string v3, "productId"

    .line 79
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->productId:Ljava/lang/String;

    const-string v3, "purchaseTime"

    const-wide/16 v4, 0x0

    .line 80
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 81
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->purchaseTime:Ljava/util/Date;

    const-string v3, "purchaseState"

    const/4 v4, 0x1

    .line 82
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/sherdle/universal/billing/PurchaseInfo;->getPurchaseState(I)Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->purchaseState:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    const-string v3, "developerPayload"

    .line 83
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->developerPayload:Ljava/lang/String;

    const-string v3, "purchaseToken"

    .line 84
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->purchaseToken:Ljava/lang/String;

    const-string v3, "autoRenewing"

    .line 85
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->autoRenewing:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 88
    invoke-static {v1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method
