.class public Lcom/sherdle/universal/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/sherdle/universal/drawer/MenuItemCallback;
.implements Lcom/sherdle/universal/ConfigParser$CallBack;


# static fields
.field public static FRAGMENT_CLASS:Ljava/lang/String; = "transation_target"

.field public static FRAGMENT_DATA:Ljava/lang/String; = "transaction_data"

.field private static final PERMISSION_REQUESTCODE:I = 0x7b

.field private static final STATE_ACTIONS:Ljava/lang/String; = "ACTIONS"

.field private static final STATE_MENU_INDEX:Ljava/lang/String; = "MENUITEMINDEX"

.field private static final STATE_PAGER_INDEX:Ljava/lang/String; = "VIEWPAGERPOSITION"

.field private static menu:Lcom/sherdle/universal/drawer/SimpleMenu;


# instance fields
.field private adapter:Lcom/sherdle/universal/drawer/TabAdapter;

.field private bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

.field public drawer:Landroid/support/v4/widget/DrawerLayout;

.field private interstitialCount:I

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field public mToolbar:Landroid/support/v7/widget/Toolbar;

.field private navigationView:Landroid/support/design/widget/NavigationView;

.field queueItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation
.end field

.field queueMenuItemId:I

.field private savedInstanceState:Landroid/os/Bundle;

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private toggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/sherdle/universal/MainActivity;->interstitialCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/MainActivity;)Landroid/support/design/widget/BottomNavigationView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/MainActivity;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/sherdle/universal/MainActivity;->onTabBecomesActive(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sherdle/universal/MainActivity;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/sherdle/universal/MainActivity;->generateSlides()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/MainActivity;)Lcom/sherdle/universal/util/layout/DisableableViewPager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    return-object p0
.end method

.method private checkPermissionsHandleIfNeeded(Ljava/util/List;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;I)Z"
        }
    .end annotation

    .line 433
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 435
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/drawer/NavItem;

    .line 437
    const-class v5, Lcom/sherdle/universal/inherit/PermissionsFragment;

    invoke-virtual {v3}, Lcom/sherdle/universal/drawer/NavItem;->getFragment()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    :try_start_0
    invoke-virtual {v3}, Lcom/sherdle/universal/drawer/NavItem;->getFragment()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/inherit/PermissionsFragment;

    invoke-interface {v3}, Lcom/sherdle/universal/inherit/PermissionsFragment;->requiredPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v3, v4

    .line 440
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 441
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_7

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 452
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 457
    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 458
    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->queueItem:Ljava/util/List;

    .line 459
    iput p2, p0, Lcom/sherdle/universal/MainActivity;->queueMenuItemId:I

    return v4

    :cond_6
    return v1

    :cond_7
    return v1
.end method

.method private configureBottomNavigation(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;)V"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/drawer/NavItem;

    .line 332
    iget-object v3, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v3}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v2, p0}, Lcom/sherdle/universal/drawer/NavItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v0, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sherdle/universal/drawer/NavItem;->getTabIcon()I

    move-result v2

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    new-instance v0, Lcom/sherdle/universal/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/MainActivity$4;-><init>(Lcom/sherdle/universal/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private dynamicElevationAppBar(Z)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    .line 583
    invoke-virtual {v0}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 584
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->setDynamicElevation(Z)V

    .line 585
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method private generateSlides()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rubengees/introduction/entity/Slide;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v1, Lcom/rubengees/introduction/entity/Slide;

    invoke-direct {v1}, Lcom/rubengees/introduction/entity/Slide;-><init>()V

    const-string v2, "Welcome"

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withTitle(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const-string v2, "Hi! Thank you for checking out our demo. Let\'s get started!"

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withDescription(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const-string v2, "#3498db"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withColor(I)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withImage(I)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/rubengees/introduction/entity/Slide;

    invoke-direct {v1}, Lcom/rubengees/introduction/entity/Slide;-><init>()V

    const-string v2, "Adaptable"

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withTitle(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const-string v2, "Universal is completely editable. You can use unlimited menu-items and tabs in your app. This demo is just one possible configuration."

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withDescription(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const-string v2, "#2ecc71"

    .line 243
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withColor(I)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withImage(I)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/rubengees/introduction/entity/Slide;

    invoke-direct {v1}, Lcom/rubengees/introduction/entity/Slide;-><init>()V

    const-string v2, "Sneak-Peak"

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withTitle(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const-string v2, "Universal has even more features than shown in this demo, like In-App purchases, Admob, Notifications!"

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withDescription(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withColor(I)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    const v2, 0x7f08008e

    invoke-virtual {v1, v2}, Lcom/rubengees/introduction/entity/Slide;->withImage(I)Lcom/rubengees/introduction/entity/Slide;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isCustomIntent(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;)Z"
        }
    .end annotation

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/drawer/NavItem;

    .line 395
    const-class v3, Lcom/sherdle/universal/providers/CustomIntent;

    invoke-virtual {v2}, Lcom/sherdle/universal/drawer/NavItem;->getFragment()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 401
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_3

    const-string p1, "INFO"

    const-string v2, "Custom Intent Item must be only child of menu item! Ignoring all other tabs"

    .line 402
    invoke-static {p1, v2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_3
    invoke-virtual {v1}, Lcom/sherdle/universal/drawer/NavItem;->getData()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/providers/CustomIntent;->performIntent(Landroid/app/Activity;[Ljava/lang/String;)V

    return v0
.end method

.method private isPurchased()Z
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {p0}, Lcom/sherdle/universal/SettingsFragment;->getIsPurchased(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-array v0, v2, [Ljava/lang/String;

    sget-object v1, Lcom/sherdle/universal/SettingsFragment;->SHOW_DIALOG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 418
    const-class v1, Lcom/sherdle/universal/SettingsFragment;

    invoke-static {p0, v1, v0}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return v2

    :cond_0
    return v2
.end method

.method private lockAppBar()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 570
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, 0x0

    .line 571
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    return-void
.end method

.method private onTabBecomesActive(I)V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/drawer/TabAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 350
    instance-of v1, v0, Lcom/sherdle/universal/inherit/CollapseControllingFragment;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/sherdle/universal/inherit/CollapseControllingFragment;

    .line 351
    invoke-interface {v2}, Lcom/sherdle/universal/inherit/CollapseControllingFragment;->supportsCollapse()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_2

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/sherdle/universal/MainActivity;->lockAppBar()V

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/sherdle/universal/MainActivity;->unlockAppBar()V

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 359
    check-cast v0, Lcom/sherdle/universal/inherit/CollapseControllingFragment;

    invoke-interface {v0}, Lcom/sherdle/universal/inherit/CollapseControllingFragment;->dynamicToolbarElevation()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 360
    invoke-direct {p0, v0}, Lcom/sherdle/universal/MainActivity;->dynamicElevationAppBar(Z)V

    goto :goto_1

    .line 362
    :cond_5
    invoke-direct {p0, v2}, Lcom/sherdle/universal/MainActivity;->dynamicElevationAppBar(Z)V

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;

    invoke-virtual {v0, v2, v2}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->setExpanded(ZZ)V

    if-eqz p1, :cond_6

    .line 368
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->showInterstitial()V

    :cond_6
    return-void
.end method

.method private unlockAppBar()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 576
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v1, 0x5

    .line 577
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    return-void
.end method


# virtual methods
.method public applyDrawerLocks()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    return-void
.end method

.method public configLoaded(Z)V
    .locals 4

    if-nez p1, :cond_2

    .line 106
    sget-object p1, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/SimpleMenu;->getFirstMenuItem()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 111
    sget-object p1, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/SimpleMenu;->getFirstMenuItem()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/sherdle/universal/MainActivity;->menuItemClicked(Ljava/util/List;IZ)V

    goto :goto_1

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    const-string v1, "ACTIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 114
    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    const-string v2, "MENUITEMINDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/sherdle/universal/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    const-string v3, "VIEWPAGERPOSITION"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 117
    invoke-virtual {p0, p1, v1, v0}, Lcom/sherdle/universal/MainActivity;->menuItemClicked(Ljava/util/List;IZ)V

    .line 118
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/sherdle/universal/util/Helper;->isOnlineShowDialog(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f0083

    const/4 v0, 0x1

    .line 108
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method public menuItemClicked(Ljava/util/List;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;IZ)V"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "menuOpenOnStart"

    const/4 v2, 0x0

    .line 278
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v4, 0x800003

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_1

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 290
    invoke-direct {p0}, Lcom/sherdle/universal/MainActivity;->isPurchased()Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    .line 291
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/MainActivity;->checkPermissionsHandleIfNeeded(Ljava/util/List;I)Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    .line 294
    :cond_4
    invoke-direct {p0, p1}, Lcom/sherdle/universal/MainActivity;->isCustomIntent(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    .line 297
    :cond_5
    sget-object p3, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-virtual {p3}, Lcom/sherdle/universal/drawer/SimpleMenu;->getMenuItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 298
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p2, :cond_6

    .line 299
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 301
    :cond_6
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 305
    :cond_7
    new-instance p2, Lcom/sherdle/universal/drawer/TabAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p3

    invoke-direct {p2, p3, p1, p0}, Lcom/sherdle/universal/drawer/TabAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    .line 306
    iget-object p2, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    iget-object p3, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    invoke-virtual {p2, p3}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 307
    invoke-direct {p0, p1}, Lcom/sherdle/universal/MainActivity;->configureBottomNavigation(Ljava/util/List;)V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 311
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->setPagingEnabled(Z)V

    goto :goto_4

    .line 316
    :cond_8
    sget-boolean p1, Lcom/sherdle/universal/Config;->BOTTOM_TABS:Z

    if-eqz p1, :cond_9

    .line 317
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {p1, v2}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    goto :goto_3

    .line 319
    :cond_9
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {p1, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 321
    :goto_3
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    invoke-virtual {p1, v3}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->setPagingEnabled(Z)V

    .line 324
    :goto_4
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->showInterstitial()V

    .line 325
    invoke-direct {p0, v2}, Lcom/sherdle/universal/MainActivity;->onTabBecomesActive(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 511
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 516
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    invoke-virtual {v0}, Lcom/sherdle/universal/drawer/TabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_1

    .line 499
    :cond_1
    instance-of v1, v0, Lcom/sherdle/universal/inherit/BackPressFragment;

    if-eqz v1, :cond_2

    .line 500
    check-cast v0, Lcom/sherdle/universal/inherit/BackPressFragment;

    invoke-interface {v0}, Lcom/sherdle/universal/inherit/BackPressFragment;->handleBackPress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_1

    .line 505
    :cond_2
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 521
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 522
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/TabAdapter;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/sherdle/universal/inherit/ConfigurationChangeFragment;

    if-nez p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->recreate()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->savedInstanceState:Landroid/os/Bundle;

    .line 127
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    .line 130
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0026

    .line 131
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->setContentView(I)V

    .line 133
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->getPrimaryDarkColor(Landroid/content/Context;)I

    move-result p1

    .line 132
    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0b0024

    .line 135
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->setContentView(I)V

    :goto_0
    const p1, 0x7f0901a5

    .line 138
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 139
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 141
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 152
    :goto_1
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f09006f

    .line 153
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    .line 154
    new-instance p1, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v4, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v6, 0x7f0f005c

    const v7, 0x7f0f005b

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->toggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 156
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/sherdle/universal/MainActivity;->toggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 157
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->toggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    :cond_2
    const p1, 0x7f09018b

    .line 161
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    const p1, 0x7f0901ca

    .line 162
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/util/layout/DisableableViewPager;

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    const p1, 0x7f090032

    .line 163
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/BottomNavigationView;

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->bottomNavigation:Landroid/support/design/widget/BottomNavigationView;

    const p1, 0x7f090101

    .line 166
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/NavigationView;

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    .line 168
    new-instance p1, Lcom/sherdle/universal/drawer/SimpleMenu;

    iget-object v2, p0, Lcom/sherdle/universal/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v2}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/sherdle/universal/drawer/SimpleMenu;-><init>(Landroid/view/Menu;Lcom/sherdle/universal/drawer/MenuItemCallback;)V

    sput-object p1, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    .line 169
    sget-boolean p1, Lcom/sherdle/universal/Config;->USE_HARDCODED_CONFIG:Z

    if-eqz p1, :cond_3

    .line 170
    sget-object p1, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-static {p1, p0}, Lcom/sherdle/universal/Config;->configureMenu(Lcom/sherdle/universal/drawer/SimpleMenu;Lcom/sherdle/universal/ConfigParser$CallBack;)V

    goto :goto_2

    :cond_3
    const-string p1, ""

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, ""

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 172
    new-instance p1, Lcom/sherdle/universal/ConfigParser;

    const-string v2, ""

    sget-object v3, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-direct {p1, v2, v3, p0, p0}, Lcom/sherdle/universal/ConfigParser;-><init>(Ljava/lang/String;Lcom/sherdle/universal/drawer/SimpleMenu;Landroid/app/Activity;Lcom/sherdle/universal/ConfigParser$CallBack;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/ConfigParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 174
    :cond_4
    new-instance p1, Lcom/sherdle/universal/ConfigParser;

    const-string v2, "config.json"

    sget-object v3, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-direct {p1, v2, v3, p0, p0}, Lcom/sherdle/universal/ConfigParser;-><init>(Ljava/lang/String;Lcom/sherdle/universal/drawer/SimpleMenu;Landroid/app/Activity;Lcom/sherdle/universal/ConfigParser$CallBack;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/ConfigParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    :goto_2
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    invoke-virtual {p1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 178
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result p1

    if-nez p1, :cond_5

    .line 179
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    .line 180
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->getPrimaryDarkColor(Landroid/content/Context;)I

    move-result v2

    .line 179
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 183
    :cond_5
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->applyDrawerLocks()V

    const p1, 0x7f09001e

    .line 186
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    .line 187
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0f0024

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 189
    invoke-static {p0}, Lcom/sherdle/universal/SettingsFragment;->getIsPurchased(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 190
    new-instance p1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 191
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 192
    new-instance p1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    .line 193
    iget-object v2, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 195
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/sherdle/universal/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/MainActivity$1;-><init>(Lcom/sherdle/universal/MainActivity;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 205
    :cond_6
    invoke-static {p0}, Lcom/sherdle/universal/util/Helper;->updateAndroidSecurityProvider(Landroid/app/Activity;)V

    .line 207
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    new-instance v2, Lcom/sherdle/universal/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/MainActivity$2;-><init>(Lcom/sherdle/universal/MainActivity;)V

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const-string p1, "MyPrefs"

    .line 221
    invoke-virtual {p0, p1, v1}, Lcom/sherdle/universal/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "my_first_time"

    .line 224
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 226
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sherdle/universal/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/MainActivity$3;-><init>(Lcom/sherdle/universal/MainActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "my_first_time"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 471
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0008

    .line 472
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 479
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900a1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7f090169

    if-eq v0, v1, :cond_0

    .line 487
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 481
    :cond_0
    const-class p1, Lcom/sherdle/universal/SettingsFragment;

    invoke-static {p0, p1, v3}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return v2

    .line 484
    :cond_1
    const-class p1, Lcom/sherdle/universal/providers/fav/ui/FavFragment;

    invoke-static {p0, p1, v3}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_0

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1

    .line 255
    :cond_0
    array-length p1, p3

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 p2, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge p2, p1, :cond_2

    aget v2, p3, p2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 262
    iget-object p1, p0, Lcom/sherdle/universal/MainActivity;->queueItem:Ljava/util/List;

    iget p2, p0, Lcom/sherdle/universal/MainActivity;->queueMenuItemId:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sherdle/universal/MainActivity;->menuItemClicked(Ljava/util/List;IZ)V

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f00b0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 530
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 532
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 535
    sget-object v1, Lcom/sherdle/universal/MainActivity;->menu:Lcom/sherdle/universal/drawer/SimpleMenu;

    invoke-virtual {v1}, Lcom/sherdle/universal/drawer/SimpleMenu;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 536
    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    :cond_2
    const-string v1, "ACTIONS"

    .line 542
    iget-object v2, p0, Lcom/sherdle/universal/MainActivity;->adapter:Lcom/sherdle/universal/drawer/TabAdapter;

    invoke-virtual {v2}, Lcom/sherdle/universal/drawer/TabAdapter;->getActions()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "MENUITEMINDEX"

    .line 543
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "VIEWPAGERPOSITION"

    .line 544
    iget-object v1, p0, Lcom/sherdle/universal/MainActivity;->viewPager:Lcom/sherdle/universal/util/layout/DisableableViewPager;

    invoke-virtual {v1}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .line 375
    iget v0, p0, Lcom/sherdle/universal/MainActivity;->interstitialCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lcom/sherdle/universal/MainActivity;->interstitialCount:I

    goto :goto_0

    .line 382
    :cond_1
    iget v0, p0, Lcom/sherdle/universal/MainActivity;->interstitialCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sherdle/universal/MainActivity;->interstitialCount:I

    :goto_0
    return-void
.end method

.method public useTabletMenu()Z
    .locals 2

    .line 549
    invoke-virtual {p0}, Lcom/sherdle/universal/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
