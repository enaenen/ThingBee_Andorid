.class final Lcom/onesignal/OneSignal$21;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->promptLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2323
    new-instance v0, Lcom/onesignal/OneSignal$21$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$21$1;-><init>(Lcom/onesignal/OneSignal$21;)V

    .line 2339
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/onesignal/LocationGMS;->getLocation(Landroid/content/Context;ZLcom/onesignal/LocationGMS$LocationHandler;)V

    .line 2340
    invoke-static {v2}, Lcom/onesignal/OneSignal;->access$2402(Z)Z

    return-void
.end method
