.class public Lcom/sherdle/universal/billing/BillingProcessor;
.super Lcom/sherdle/universal/billing/BillingBase;
.source "BillingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "iabv3"

.field private static final MANAGED_PRODUCTS_CACHE_KEY:Ljava/lang/String; = ".products.cache.v2_6"

.field private static final PURCHASE_FLOW_REQUEST_CODE:I = 0x7ecb

.field private static final PURCHASE_PAYLOAD_CACHE_KEY:Ljava/lang/String; = ".purchase.last.v2_6"

.field private static final RESTORE_KEY:Ljava/lang/String; = ".products.restored.v2_6"

.field private static final SETTINGS_VERSION:Ljava/lang/String; = ".v2_6"

.field private static final SUBSCRIPTIONS_CACHE_KEY:Ljava/lang/String; = ".subscriptions.cache.v2_6"


# instance fields
.field private billingService:Lcom/android/vending/billing/IInAppBillingService;

.field private cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

.field private cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

.field private contextPackageName:Ljava/lang/String;

.field private eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private signatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lcom/sherdle/universal/billing/BillingBase;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/sherdle/universal/billing/BillingProcessor$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/billing/BillingProcessor$1;-><init>(Lcom/sherdle/universal/billing/BillingProcessor;)V

    iput-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    .line 90
    iput-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->signatureBase64:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->contextPackageName:Ljava/lang/String;

    .line 93
    new-instance p2, Lcom/sherdle/universal/billing/BillingCache;

    const-string p3, ".products.cache.v2_6"

    invoke-direct {p2, p1, p3}, Lcom/sherdle/universal/billing/BillingCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    .line 94
    new-instance p2, Lcom/sherdle/universal/billing/BillingCache;

    const-string p3, ".subscriptions.cache.v2_6"

    invoke-direct {p2, p1, p3}, Lcom/sherdle/universal/billing/BillingCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

    .line 95
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->bindPlayServices()V

    return-void
.end method

.method static synthetic access$002(Lcom/sherdle/universal/billing/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sherdle/universal/billing/BillingProcessor;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->isPurchaseHistoryRestored()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/billing/BillingProcessor;)Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    return-object p0
.end method

.method private bindPlayServices()V
    .locals 4

    .line 100
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "iabv3"

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getPurchasePayload()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPurchaseTransactionDetails(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Lcom/sherdle/universal/billing/TransactionDetails;
    .locals 2

    .line 216
    invoke-virtual {p2, p1}, Lcom/sherdle/universal/billing/BillingCache;->getDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/PurchaseInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 217
    iget-object v0, p2, Lcom/sherdle/universal/billing/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :try_start_0
    new-instance v0, Lcom/sherdle/universal/billing/TransactionDetails;

    invoke-direct {v0, p2}, Lcom/sherdle/universal/billing/TransactionDetails;-><init>(Lcom/sherdle/universal/billing/PurchaseInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p2, "iabv3"

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load saved purchase details for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/billing/SkuDetails;
    .locals 1

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-direct {p0, v0, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 255
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/billing/SkuDetails;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/billing/SkuDetails;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 262
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ITEM_ID_LIST"

    .line 263
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 264
    iget-object v4, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sherdle/universal/billing/BillingProcessor;->contextPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, p2, v3}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "RESPONSE_CODE"

    .line 265
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "DETAILS_LIST"

    .line 270
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 271
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    new-instance v3, Lcom/sherdle/universal/billing/SkuDetails;

    invoke-direct {v3, v4}, Lcom/sherdle/universal/billing/SkuDetails;-><init>(Lorg/json/JSONObject;)V

    .line 273
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 278
    :cond_1
    iget-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p2, :cond_2

    .line 279
    iget-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    invoke-interface {p2, v3, v1}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    :cond_2
    const-string p2, "iabv3"

    const-string v4, "Failed to retrieve info for %d products, %d"

    const/4 v5, 0x2

    .line 280
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "iabv3"

    const-string v3, "Failed to call getSkuDetails %s"

    .line 283
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method private isPurchaseHistoryRestored()Z
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadPurchasesByType(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Z
    .locals 8

    .line 143
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->contextPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, p1, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {p2}, Lcom/sherdle/universal/billing/BillingCache;->clear()V

    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "INAPP_DATA_SIGNATURE_LIST"

    .line 150
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v2, 0x0

    .line 151
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 152
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    const-string v7, "productId"

    .line 155
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v3, v6}, Lcom/sherdle/universal/billing/BillingCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 160
    iget-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p2, :cond_3

    .line 161
    iget-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    const/16 v0, 0x64

    invoke-interface {p2, v0, p1}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    :cond_3
    const-string p2, "iabv3"

    .line 162
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 182
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 185
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-direct {p0, v8}, Lcom/sherdle/universal/billing/BillingProcessor;->savePurchasePayload(Ljava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sherdle/universal/billing/BillingProcessor;->contextPackageName:Ljava/lang/String;

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_6

    const-string v0, "RESPONSE_CODE"

    .line 189
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string p2, "BUY_INTENT"

    .line 191
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/16 v5, 0x7ecb

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p1, :cond_6

    .line 195
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    const/16 p2, 0x67

    invoke-interface {p1, p2, v2}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    if-ne v0, p1, :cond_5

    .line 197
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->isPurchased(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->isSubscribed(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    .line 199
    :cond_3
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p1, :cond_6

    .line 200
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/TransactionDetails;

    move-result-object p1

    if-nez p1, :cond_4

    .line 202
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/TransactionDetails;

    move-result-object p1

    .line 203
    :cond_4
    iget-object p3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    invoke-interface {p3, p2, p1}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onProductPurchased(Ljava/lang/String;Lcom/sherdle/universal/billing/TransactionDetails;)V

    goto :goto_0

    .line 205
    :cond_5
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p1, :cond_6

    .line 206
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    const/16 p2, 0x65

    invoke-interface {p1, p2, v2}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "iabv3"

    .line 210
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method private savePurchasePayload(Ljava/lang/String;)V
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".purchase.last.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sherdle/universal/billing/BillingProcessor;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->signatureBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->signatureBase64:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/sherdle/universal/billing/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public consumePurchase(Ljava/lang/String;)Z
    .locals 6

    .line 228
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 231
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Lcom/sherdle/universal/billing/TransactionDetails;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v2, v0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sherdle/universal/billing/BillingProcessor;->contextPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseToken:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/billing/BillingCache;->remove(Ljava/lang/String;)V

    const-string v0, "iabv3"

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully consumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " purchase."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    :cond_2
    const-string v3, "iabv3"

    const-string v4, "Failed to consume %s: error %d"

    const/4 v5, 0x2

    .line 241
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "iabv3"

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/sherdle/universal/billing/BillingBase;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseListingDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/SkuDetails;
    .locals 1

    const-string v0, "inapp"

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/billing/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public getPurchaseListingDetails(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/billing/SkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, "inapp"

    .line 298
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPurchaseTransactionDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/TransactionDetails;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Lcom/sherdle/universal/billing/TransactionDetails;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionListingDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/SkuDetails;
    .locals 1

    const-string v0, "subs"

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/billing/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionListingDetails(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/billing/SkuDetails;",
            ">;"
        }
    .end annotation

    const-string v0, "subs"

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getSkuDetails(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptionTransactionDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/TransactionDetails;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPurchaseTransactionDetails(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Lcom/sherdle/universal/billing/TransactionDetails;

    move-result-object p1

    return-object p1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x7ecb

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    const-string p1, "iabv3"

    const-string p2, "handleActivityResult: data is null!"

    .line 317
    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "RESPONSE_CODE"

    .line 320
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "iabv3"

    const-string v2, "resultCode = %d, responseCode = %d"

    const/4 v3, 0x2

    .line 321
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPurchasePayload()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_6

    if-nez p1, :cond_6

    .line 323
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p1, "INAPP_PURCHASE_DATA"

    .line 324
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "INAPP_DATA_SIGNATURE"

    .line 325
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 327
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "productId"

    .line 328
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "developerPayload"

    .line 329
    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    const-string v5, "subs"

    .line 332
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 333
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x66

    if-eqz v7, :cond_5

    .line 334
    invoke-direct {p0, v2, p1, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v5, :cond_3

    .line 335
    iget-object p3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    .line 336
    :goto_0
    invoke-virtual {p3, v2, p1, p2}, Lcom/sherdle/universal/billing/BillingCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p3, :cond_7

    .line 338
    iget-object p3, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    new-instance v0, Lcom/sherdle/universal/billing/TransactionDetails;

    new-instance v1, Lcom/sherdle/universal/billing/PurchaseInfo;

    invoke-direct {v1, p1, p2}, Lcom/sherdle/universal/billing/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sherdle/universal/billing/TransactionDetails;-><init>(Lcom/sherdle/universal/billing/PurchaseInfo;)V

    invoke-interface {p3, v2, v0}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onProductPurchased(Ljava/lang/String;Lcom/sherdle/universal/billing/TransactionDetails;)V

    goto :goto_1

    :cond_4
    const-string p1, "iabv3"

    const-string p2, "Public key signature doesn\'t match!"

    .line 340
    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p1, :cond_7

    .line 342
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    invoke-interface {p1, v8, v4}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const-string p1, "iabv3"

    const-string p2, "Payload mismatch: %s != %s"

    .line 345
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    aput-object p3, v2, v6

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p1, :cond_7

    .line 347
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    invoke-interface {p1, v8, v4}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "iabv3"

    .line 350
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p1, :cond_7

    .line 352
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    const/16 p2, 0x6e

    invoke-interface {p1, p2, v4}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    goto :goto_1

    .line 355
    :cond_6
    iget-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    if-eqz p2, :cond_7

    .line 356
    iget-object p2, p0, Lcom/sherdle/universal/billing/BillingProcessor;->eventHandler:Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    invoke-interface {p2, p1, v4}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingError(ILjava/lang/Throwable;)V

    :cond_7
    :goto_1
    return v6
.end method

.method public isInitialized()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/billing/BillingCache;->includesProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSubscribed(Ljava/lang/String;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/billing/BillingCache;->includesProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lcom/sherdle/universal/billing/TransactionDetails;)Z
    .locals 2

    .line 378
    iget-object v0, p1, Lcom/sherdle/universal/billing/TransactionDetails;->productId:Ljava/lang/String;

    iget-object v1, p1, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseInfo:Lcom/sherdle/universal/billing/PurchaseInfo;

    iget-object v1, v1, Lcom/sherdle/universal/billing/PurchaseInfo;->responseData:Ljava/lang/String;

    iget-object p1, p1, Lcom/sherdle/universal/billing/TransactionDetails;->purchaseInfo:Lcom/sherdle/universal/billing/PurchaseInfo;

    iget-object p1, p1, Lcom/sherdle/universal/billing/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/sherdle/universal/billing/BillingProcessor;->verifyPurchaseSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public listOwnedProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    invoke-virtual {v0}, Lcom/sherdle/universal/billing/BillingCache;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listOwnedSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

    invoke-virtual {v0}, Lcom/sherdle/universal/billing/BillingCache;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadOwnedPurchasesFromGoogle()Z
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "inapp"

    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->loadPurchasesByType(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "subs"

    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedSubscriptions:Lcom/sherdle/universal/billing/BillingCache;

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->loadPurchasesByType(Ljava/lang/String;Lcom/sherdle/universal/billing/BillingCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "inapp"

    .line 174
    invoke-direct {p0, p1, p2, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingProcessor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "iabv3"

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->billingService:Lcom/android/vending/billing/IInAppBillingService;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingProcessor;->cachedProducts:Lcom/sherdle/universal/billing/BillingCache;

    invoke-virtual {v0}, Lcom/sherdle/universal/billing/BillingCache;->release()V

    .line 119
    invoke-super {p0}, Lcom/sherdle/universal/billing/BillingBase;->release()V

    return-void
.end method

.method public setPurchaseHistoryRestored()V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingProcessor;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".products.restored.v2_6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->saveBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    return-void
.end method

.method public subscribe(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "subs"

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
