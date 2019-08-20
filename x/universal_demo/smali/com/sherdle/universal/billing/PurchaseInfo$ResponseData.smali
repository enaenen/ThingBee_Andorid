.class public Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/billing/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseData"
.end annotation


# instance fields
.field public autoRenewing:Z

.field public developerPayload:Ljava/lang/String;

.field public orderId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public purchaseState:Lcom/sherdle/universal/billing/PurchaseInfo$PurchaseState;

.field public purchaseTime:Ljava/util/Date;

.field public purchaseToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sherdle/universal/billing/PurchaseInfo;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/billing/PurchaseInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sherdle/universal/billing/PurchaseInfo$ResponseData;->this$0:Lcom/sherdle/universal/billing/PurchaseInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
