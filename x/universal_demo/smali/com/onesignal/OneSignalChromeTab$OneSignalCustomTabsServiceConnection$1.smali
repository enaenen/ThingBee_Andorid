.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;
.super Landroid/support/customtabs/CustomTabsCallback;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection$1;->this$0:Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/support/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    return-void
.end method
