.class Lcom/sherdle/universal/billing/BillingProcessor$1;
.super Ljava/lang/Object;
.source "BillingProcessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/billing/BillingProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/billing/BillingProcessor;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/billing/BillingProcessor;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/billing/BillingProcessor;->access$002(Lcom/sherdle/universal/billing/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 78
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-static {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->access$100(Lcom/sherdle/universal/billing/BillingProcessor;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-virtual {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-virtual {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->setPurchaseHistoryRestored()V

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-static {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->access$200(Lcom/sherdle/universal/billing/BillingProcessor;)Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-static {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->access$200(Lcom/sherdle/universal/billing/BillingProcessor;)Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onPurchaseHistoryRestored()V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-static {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->access$200(Lcom/sherdle/universal/billing/BillingProcessor;)Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-static {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->access$200(Lcom/sherdle/universal/billing/BillingProcessor;)Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;->onBillingInitialized()V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/sherdle/universal/billing/BillingProcessor$1;->this$0:Lcom/sherdle/universal/billing/BillingProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->access$002(Lcom/sherdle/universal/billing/BillingProcessor;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
