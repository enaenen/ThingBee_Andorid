.class public Lcom/sherdle/universal/providers/CustomIntent;
.super Landroid/support/v4/app/Fragment;
.source "CustomIntent.java"


# static fields
.field public static OPEN_ACTIVITY:Ljava/lang/String; = "activity"

.field public static OPEN_APP:Ljava/lang/String; = "app"

.field public static OPEN_FRAGMENT:Ljava/lang/String; = "fragment"

.field public static OPEN_URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static openActivity(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .line 74
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 77
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static openApp(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "android.intent.category.LAUNCHER"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static openFragment(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 86
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static openUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 65
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static performIntent(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 29
    aget-object v1, p1, v0

    sget-object v2, Lcom/sherdle/universal/providers/CustomIntent;->OPEN_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 30
    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/CustomIntent;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 31
    :cond_0
    aget-object v1, p1, v0

    sget-object v3, Lcom/sherdle/universal/providers/CustomIntent;->OPEN_APP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/CustomIntent;->openApp(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 33
    :cond_1
    aget-object v1, p1, v0

    sget-object v3, Lcom/sherdle/universal/providers/CustomIntent;->OPEN_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/CustomIntent;->openActivity(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 35
    :cond_2
    aget-object v1, p1, v0

    sget-object v3, Lcom/sherdle/universal/providers/CustomIntent;->OPEN_FRAGMENT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/CustomIntent;->openFragment(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0082

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method
