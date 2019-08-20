.class public Lcom/sherdle/universal/drawer/TabAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "TabAdapter.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isRtl:Z

.field private mCurrentFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 33
    iput-object p2, p0, Lcom/sherdle/universal/drawer/TabAdapter;->actions:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/sherdle/universal/drawer/TabAdapter;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/sherdle/universal/drawer/TabAdapter;->isRtl:Z

    .line 37
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p2, v0, :cond_1

    .line 38
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/sherdle/universal/drawer/TabAdapter;->isRtl:Z

    :cond_1
    return-void
.end method

.method private static fragmentFromAction(Lcom/sherdle/universal/drawer/NavItem;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/sherdle/universal/drawer/NavItem;->getFragment()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 85
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    sget-object v2, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sherdle/universal/drawer/NavItem;->getData()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 92
    invoke-static {p0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/drawer/NavItem;

    invoke-static {p1}, Lcom/sherdle/universal/drawer/TabAdapter;->fragmentFromAction(Lcom/sherdle/universal/drawer/NavItem;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->actions:Ljava/util/List;

    iget-boolean v1, p0, Lcom/sherdle/universal/drawer/TabAdapter;->isRtl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sherdle/universal/drawer/TabAdapter;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/drawer/NavItem;

    iget-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/drawer/NavItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/sherdle/universal/drawer/TabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eq v0, p3, :cond_0

    .line 64
    move-object v0, p3

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/sherdle/universal/drawer/TabAdapter;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
