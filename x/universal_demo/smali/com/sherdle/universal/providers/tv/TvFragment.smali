.class public Lcom/sherdle/universal/providers/tv/TvFragment;
.super Landroid/support/v4/app/Fragment;
.source "TvFragment.java"

# interfaces
.implements Lcom/sherdle/universal/inherit/CollapseControllingFragment;
.implements Lcom/sherdle/universal/inherit/BackPressFragment;
.implements Lcom/sherdle/universal/inherit/ConfigurationChangeFragment;
.implements Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/tv/TvFragment$ControlsVisibilityListener;
    }
.end annotation


# instance fields
.field private mAct:Landroid/app/Activity;

.field private rl:Landroid/widget/RelativeLayout;

.field private systemUIHidden:Z

.field private videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->systemUIHidden:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/tv/TvFragment;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->systemUIHidden:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/tv/TvFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->showSystemUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/tv/TvFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->hideSystemUI()V

    return-void
.end method

.method private hideSystemUI()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sherdle/universal/MainActivity;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    check-cast v0, Lcom/sherdle/universal/MainActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    check-cast v0, Lcom/sherdle/universal/MainActivity;

    iget-object v0, v0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 168
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    const v3, 0x7f090070

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 169
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 170
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    const v2, 0x7f090101

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x480

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 181
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 182
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_2

    const/16 v2, 0xf06

    .line 183
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 190
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    const/16 v2, 0x706

    .line 191
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 198
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 200
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->systemUIHidden:Z

    return-void
.end method

.method private showSystemUI()V
    .locals 4

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    instance-of v0, v0, Lcom/sherdle/universal/MainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    check-cast v0, Lcom/sherdle/universal/MainActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/MainActivity;->useTabletMenu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    check-cast v0, Lcom/sherdle/universal/MainActivity;

    iget-object v0, v0, Lcom/sherdle/universal/MainActivity;->drawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    const v2, 0x7f090101

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 216
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    check-cast v0, Lcom/sherdle/universal/MainActivity;

    iget-object v0, v0, Lcom/sherdle/universal/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;

    const/high16 v2, 0x41c80000    # 25.0f

    .line 217
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->setPadding(IIII)V

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x480

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x100

    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 228
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 234
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    const v3, 0x7f09001e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    .line 236
    iput-boolean v1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->systemUIHidden:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "INFO"

    .line 238
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dynamicToolbarElevation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBackPress()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->systemUIHidden:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->showSystemUI()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initCustomControls()V
    .locals 6

    .line 79
    new-instance v0, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;

    iget-object v1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;->hideSeekBar()V

    .line 82
    iget-object v1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0086

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 83
    new-instance v3, Lcom/sherdle/universal/providers/tv/TvFragment$1;

    invoke-direct {v3, p0}, Lcom/sherdle/universal/providers/tv/TvFragment$1;-><init>(Lcom/sherdle/universal/providers/tv/TvFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090043

    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090044

    .line 94
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0f00f8

    .line 96
    invoke-virtual {p0, v5}, Lcom/sherdle/universal/providers/tv/TvFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    .line 97
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;->addExtraView(Landroid/view/View;)V

    .line 100
    new-instance v1, Lcom/sherdle/universal/providers/tv/TvFragment$ControlsVisibilityListener;

    invoke-direct {v1, p0, v2}, Lcom/sherdle/universal/providers/tv/TvFragment$ControlsVisibilityListener;-><init>(Lcom/sherdle/universal/providers/tv/TvFragment;Lcom/sherdle/universal/providers/tv/TvFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;->setVisibilityListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;)V

    .line 101
    iget-object v1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tv/TvFragment;->setRetainInstance(Z)V

    .line 62
    iget-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->isOnlineShowDialog(Landroid/app/Activity;)Z

    .line 64
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 65
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->initCustomControls()V

    .line 66
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    .line 67
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b005c

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->rl:Landroid/widget/RelativeLayout;

    .line 50
    iget-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->rl:Landroid/widget/RelativeLayout;

    const p2, 0x7f0901c5

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    .line 52
    iget-object p1, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->rl:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->stopPlayback()V

    .line 122
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tv/TvFragment;->showSystemUI()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 108
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->pause()V

    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/TvFragment;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->start()V

    return-void
.end method

.method public supportsCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
