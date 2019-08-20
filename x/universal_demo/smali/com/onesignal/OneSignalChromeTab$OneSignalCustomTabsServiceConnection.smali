.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalChromeTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalCustomTabsServiceConnection"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mParams:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 85
    invoke-virtual {p2, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 87
    new-instance p1, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;-><init>(Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;)V

    invoke-virtual {p2, p1}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 100
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://onesignal.com/android_frame.html"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->mParams:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1, p2, v0, v0}, Landroid/support/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
