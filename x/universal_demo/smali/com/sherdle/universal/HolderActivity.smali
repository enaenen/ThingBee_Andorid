.class public Lcom/sherdle/universal/HolderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HolderActivity.java"


# instance fields
.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private queueItem:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private queueItemData:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkPermissionsHandleIfNeeded(Ljava/lang/Class;[Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    const-class v2, Lcom/sherdle/universal/inherit/PermissionsFragment;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/inherit/PermissionsFragment;

    invoke-interface {v2}, Lcom/sherdle/universal/inherit/PermissionsFragment;->requiredPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :catch_0
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    invoke-virtual {p0, v4}, Lcom/sherdle/universal/HolderActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    .line 221
    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/HolderActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 222
    iput-object p1, p0, Lcom/sherdle/universal/HolderActivity;->queueItem:Ljava/lang/Class;

    .line 223
    iput-object p2, p0, Lcom/sherdle/universal/HolderActivity;->queueItemData:[Ljava/lang/String;

    return v5

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    sget-object p2, Lcom/sherdle/universal/MainActivity;->FRAGMENT_CLASS:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/sherdle/universal/HolderActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;I)V

    return-void
.end method

.method public static startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p4, :cond_1

    .line 56
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p2, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p2, "INFO"

    .line 61
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No activity to resolve url: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0f0096

    .line 62
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 68
    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_CLASS:Ljava/lang/String;

    const-class v0, Landroid/webkit/WebViewFragment;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "hide_navigation"

    .line 70
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "loadwithdata"

    .line 71
    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/sherdle/universal/HolderActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 186
    instance-of v1, v0, Lcom/sherdle/universal/inherit/BackPressFragment;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lcom/sherdle/universal/inherit/BackPressFragment;

    invoke-interface {v0}, Lcom/sherdle/universal/inherit/BackPressFragment;->handleBackPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 191
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    const p1, 0x7f0b0023

    .line 87
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/HolderActivity;->setContentView(I)V

    const p1, 0x7f0901a6

    .line 89
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/HolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/HolderActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 90
    iget-object p1, p0, Lcom/sherdle/universal/HolderActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/HolderActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 91
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_CLASS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 95
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    const-class v1, Lcom/sherdle/universal/providers/CustomIntent;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p0, v0}, Lcom/sherdle/universal/providers/CustomIntent;->performIntent(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->finish()V

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hide_navigation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "loadwithdata"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/HolderActivity;->openFragment(Ljava/lang/Class;[Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "hide_navigation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "loadwithdata"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sherdle/universal/HolderActivity;->openWebFragment([Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    const p1, 0x7f09001e

    .line 106
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/HolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0008

    .line 160
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0900a1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f090169

    if-eq v0, v1, :cond_0

    .line 178
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 172
    :cond_0
    const-class p1, Lcom/sherdle/universal/SettingsFragment;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/HolderActivity;->openFragment(Ljava/lang/Class;[Ljava/lang/String;)V

    return v2

    .line 175
    :cond_1
    const-class p1, Lcom/sherdle/universal/providers/fav/ui/FavFragment;

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/HolderActivity;->openFragment(Ljava/lang/Class;[Ljava/lang/String;)V

    return v2

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->finish()V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 255
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 239
    :goto_0
    array-length v2, p3

    if-ge p2, v2, :cond_2

    .line 240
    aget v2, p3, p2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 247
    iget-object p1, p0, Lcom/sherdle/universal/HolderActivity;->queueItem:Ljava/lang/Class;

    iget-object p2, p0, Lcom/sherdle/universal/HolderActivity;->queueItemData:[Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/HolderActivity;->openFragment(Ljava/lang/Class;[Ljava/lang/String;)V

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0f00b0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 261
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 262
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public openFragment(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/HolderActivity;->checkPermissionsHandleIfNeeded(Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    .line 123
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const v0, 0x7f090056

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public openWebFragment([Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 135
    new-instance v0, Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/web/WebviewFragment;-><init>()V

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    sget-object v2, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "hide_navigation"

    .line 140
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    const-string p1, "loadwithdata"

    .line 142
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f090056

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    if-nez p3, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/sherdle/universal/HolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0114

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/HolderActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 154
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/HolderActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
