.class public final enum Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;
.super Ljava/lang/Enum;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/billing/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

.field public static final enum Canceled:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

.field public static final enum PurchasedSuccessfully:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

.field public static final enum Refunded:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

.field public static final enum SubscriptionExpired:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    const-string v1, "PurchasedSuccessfully"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->PurchasedSuccessfully:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    new-instance v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    const-string v1, "Canceled"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Canceled:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    new-instance v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    const-string v1, "Refunded"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Refunded:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    new-instance v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    const-string v1, "SubscriptionExpired"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->SubscriptionExpired:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    sget-object v1, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->PurchasedSuccessfully:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Canceled:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->Refunded:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->SubscriptionExpired:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->$VALUES:[Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;
    .locals 1

    .line 34
    const-class v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;
    .locals 1

    .line 34
    sget-object v0, Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->$VALUES:[Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    invoke-virtual {v0}, [Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

    return-object v0
.end method
