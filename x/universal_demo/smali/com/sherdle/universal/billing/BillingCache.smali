.class Lcom/sherdle/universal/billing/BillingCache;
.super Lcom/sherdle/universal/billing/BillingBase;
.source "BillingCache.java"


# static fields
.field private static final ENTRY_DELIMITER:Ljava/lang/String; = "#####"

.field private static final LINE_DELIMITER:Ljava/lang/String; = ">>>>>"

.field private static final VERSION_KEY:Ljava/lang/String; = ".version"


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sherdle/universal/billing/PurchaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sherdle/universal/billing/BillingBase;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    .line 39
    iput-object p2, p0, Lcom/sherdle/universal/billing/BillingCache;->cacheKey:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->load()V

    return-void
.end method

.method private flush()V
    .locals 5

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/billing/PurchaseInfo;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">>>>>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/sherdle/universal/billing/PurchaseInfo;->responseData:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">>>>>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/sherdle/universal/billing/PurchaseInfo;->signature:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#####"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sherdle/universal/billing/BillingCache;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->version:Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getPreferencesVersionKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingCache;->version:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingCache;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private getCurrentVersion()Ljava/lang/String;
    .locals 2

    .line 109
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getPreferencesVersionKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingCache;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesCacheKey()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/billing/BillingCache;->getPreferencesBaseKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingCache;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferencesVersionKey()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private load()V
    .locals 10

    .line 52
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getPreferencesCacheKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/billing/BillingCache;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#####"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ">>>>>"

    .line 54
    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le v5, v6, :cond_0

    .line 56
    iget-object v5, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    aget-object v8, v4, v2

    new-instance v9, Lcom/sherdle/universal/billing/PurchaseInfo;

    aget-object v7, v4, v7

    aget-object v4, v4, v6

    invoke-direct {v9, v7, v4}, Lcom/sherdle/universal/billing/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_0
    array-length v5, v4

    if-le v5, v7, :cond_1

    .line 58
    iget-object v5, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    aget-object v6, v4, v2

    new-instance v8, Lcom/sherdle/universal/billing/PurchaseInfo;

    aget-object v4, v4, v7

    const/4 v7, 0x0

    invoke-direct {v8, v4, v7}, Lcom/sherdle/universal/billing/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getCurrentVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->version:Ljava/lang/String;

    return-void
.end method

.method private reloadDataIfNeeded()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->version:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->getCurrentVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->load()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->reloadDataIfNeeded()V

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 105
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->flush()V

    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDetails(Ljava/lang/String;)Lcom/sherdle/universal/billing/PurchaseInfo;
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->reloadDataIfNeeded()V

    .line 83
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/billing/PurchaseInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public includesProduct(Ljava/lang/String;)Z
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->reloadDataIfNeeded()V

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->reloadDataIfNeeded()V

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    new-instance v1, Lcom/sherdle/universal/billing/PurchaseInfo;

    invoke-direct {v1, p2, p3}, Lcom/sherdle/universal/billing/PurchaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->flush()V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->reloadDataIfNeeded()V

    .line 96
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lcom/sherdle/universal/billing/BillingCache;->flush()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ", "

    .line 125
    iget-object v1, p0, Lcom/sherdle/universal/billing/BillingCache;->data:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
