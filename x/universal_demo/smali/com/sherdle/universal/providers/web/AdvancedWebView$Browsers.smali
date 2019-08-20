.class public Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;
.super Ljava/lang/Object;
.source "AdvancedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/web/AdvancedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Browsers"
.end annotation


# static fields
.field private static mAlternativePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlternative(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1272
    sget-object v0, Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;->mAlternativePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1273
    sget-object p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;->mAlternativePackage:Ljava/lang/String;

    return-object p0

    .line 1276
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->ALTERNATIVE_BROWSERS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 1279
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1280
    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_2

    goto :goto_0

    .line 1284
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1285
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;->mAlternativePackage:Ljava/lang/String;

    .line 1287
    iget-object p0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasAlternative(Landroid/content/Context;)Z
    .locals 0

    .line 1262
    invoke-static {p0}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;->getAlternative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1301
    invoke-static {p0, p1, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;->openUrl(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    .line 1312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1313
    invoke-static {p0}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Browsers;->getAlternative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 1314
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1316
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1319
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
