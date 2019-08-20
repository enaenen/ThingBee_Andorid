.class Lcom/onesignal/OneSignal$21$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/LocationGMS$LocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignal$21;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$21;)V
    .locals 0

    .line 2323
    iput-object p1, p0, Lcom/onesignal/OneSignal$21$1;->this$0:Lcom/onesignal/OneSignal$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/onesignal/LocationGMS$LocationPoint;)V
    .locals 1

    const-string v0, "promptLocation()"

    .line 2331
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2335
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationGMS$LocationPoint;)V

    :cond_1
    return-void
.end method

.method public getType()Lcom/onesignal/LocationGMS$CALLBACK_TYPE;
    .locals 1

    .line 2326
    sget-object v0, Lcom/onesignal/LocationGMS$CALLBACK_TYPE;->PROMPT_LOCATION:Lcom/onesignal/LocationGMS$CALLBACK_TYPE;

    return-object v0
.end method
