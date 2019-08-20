.class public Lcom/sherdle/universal/providers/web/WebviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "WebviewFragment.java"

# interfaces
.implements Lcom/sherdle/universal/inherit/BackPressFragment;
.implements Lcom/sherdle/universal/inherit/CollapseControllingFragment;
.implements Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;
.implements Lcom/sherdle/universal/inherit/ConfigurationChangeFragment;
.implements Lcom/sherdle/universal/inherit/PermissionsFragment;


# static fields
.field public static final HIDE_NAVIGATION:Ljava/lang/String; = "hide_navigation"

.field public static final LOAD_DATA:Ljava/lang/String; = "loadwithdata"


# instance fields
.field private browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

.field private ll:Landroid/widget/FrameLayout;

.field private mAct:Landroid/app/Activity;

.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private webBackButton:Landroid/widget/ImageButton;

.field private webForwButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/web/WebviewFragment;)Lcom/sherdle/universal/providers/web/AdvancedWebView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    return-object p0
.end method

.method private hasConnectivity()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const-string v1, "connectivity"

    .line 316
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 317
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private shareURL()V
    .locals 6

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0f0026

    .line 346
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0112

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0113

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    .line 350
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ed

    .line 352
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public adjustControls()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webBackButton:Landroid/widget/ImageButton;

    .line 329
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webForwButton:Landroid/widget/ImageButton;

    .line 331
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webForwButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webBackButton:Landroid/widget/ImageButton;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 335
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webForwButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->canGoBack()Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webForwButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public dynamicToolbarElevation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBackPress()Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->onBackPressed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideErrorScreen()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->ll:Landroid/widget/FrameLayout;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public navigationIsVisible()Z
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_navigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_navigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->setRetainInstance(Z)V

    .line 152
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    new-instance v0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;

    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 154
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 155
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "loadwithdata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "loadwithdata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_1

    .line 160
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->loadUrl(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 363
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_navigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_navigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0c000c

    .line 302
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 305
    :cond_1
    iget-object p2, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "file:///android_asset/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f09016a

    .line 306
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    :cond_2
    iget-object p2, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x0

    const v0, 0x7f0b006e

    .line 83
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->ll:Landroid/widget/FrameLayout;

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->setHasOptionsMenu(Z)V

    .line 88
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->ll:Landroid/widget/FrameLayout;

    const p2, 0x7f0901cd

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    .line 89
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->ll:Landroid/widget/FrameLayout;

    const p2, 0x7f090147

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 91
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->setListener(Landroid/app/Activity;Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;)V

    .line 92
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {p1, p3}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->setGeolocationEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    new-instance p2, Lcom/sherdle/universal/providers/web/WebviewFragment$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/web/WebviewFragment$1;-><init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 132
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/sherdle/universal/providers/web/WebviewFragment$2;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/web/WebviewFragment$2;-><init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 139
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->ll:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 254
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 255
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->onDestroy()V

    return-void
.end method

.method public onDownloadRequested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 418
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lcom/sherdle/universal/util/Helper;->hasPermissionToDownload(Landroid/app/Activity;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 421
    :cond_0
    iget-object p3, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    invoke-static {p3, p1, p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->handleDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const p2, 0x7f0f0056

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onExternalPageRequest(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 260
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 262
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->setMenuVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 268
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09009f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09016a

    if-eq v0, v1, :cond_0

    .line 294
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->shareURL()V

    return v2

    .line 273
    :cond_1
    new-instance p1, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 274
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 276
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v0, v3}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->checkEvent(Ljava/lang/String;Ljava/io/Serializable;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    invoke-virtual {v1, p1, v0, v3}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->addFavorite(Ljava/lang/String;Ljava/io/Serializable;I)J

    .line 282
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    .line 283
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    .line 288
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    const-string p1, "file:///android_asset/"

    .line 409
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->hasConnectivity()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->showErrorScreen()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 1

    .line 397
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->adjustControls()V

    .line 401
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->hideErrorScreen()V

    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 391
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->navigationIsVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->onPause()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->isMenuVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->setMenuVisibility(Z)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 234
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->browser:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->onResume()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_navigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_navigation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->isMenuVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->setMenuVisibility(Z)V

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->adjustControls()V

    return-void
.end method

.method public requiredPermissions()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 438
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setMenuVisibility(Z)V
    .locals 4

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 182
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->navigationIsVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 187
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    .line 188
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sherdle/universal/HolderActivity;

    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    .line 193
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1a

    .line 195
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const v2, 0x800015

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 202
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const v0, 0x7f0900af

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webBackButton:Landroid/widget/ImageButton;

    .line 203
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->mAct:Landroid/app/Activity;

    const v0, 0x7f0900b0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webForwButton:Landroid/widget/ImageButton;

    .line 205
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webBackButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sherdle/universal/providers/web/WebviewFragment$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/web/WebviewFragment$3;-><init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->webForwButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/sherdle/universal/providers/web/WebviewFragment$4;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/web/WebviewFragment$4;-><init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->navigationIsVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 222
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 224
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    .line 225
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/16 v0, 0xa

    .line 226
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public showErrorScreen()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment;->ll:Landroid/widget/FrameLayout;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 443
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09014b

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/web/WebviewFragment$5;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/web/WebviewFragment$5;-><init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public supportsCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
