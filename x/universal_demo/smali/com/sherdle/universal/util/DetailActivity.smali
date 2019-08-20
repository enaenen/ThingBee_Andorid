.class public abstract Lcom/sherdle/universal/util/DetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DetailActivity.java"


# instance fields
.field FadeBar:Z

.field protected coolblue:Landroid/widget/RelativeLayout;

.field protected latestAlpha:I

.field protected mScrollableHeaderHeight:I

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;

.field protected thumb:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/sherdle/universal/util/DetailActivity;->FadeBar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/util/DetailActivity;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->handleScroll(I)V

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 170
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    .line 171
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 172
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    .line 173
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 174
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    .line 175
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    .line 176
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static blendStatusBarColors(FLandroid/content/Context;)I
    .locals 2

    .line 157
    invoke-static {p1}, Lcom/sherdle/universal/util/ThemeUtils;->getPrimaryDarkColor(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f060023

    .line 158
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 159
    invoke-static {v0, p1, p0}, Lcom/sherdle/universal/util/DetailActivity;->blendColors(IIF)I

    move-result p0

    return p0
.end method

.method private static blendToolbarContentColors(F)I
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    .line 165
    invoke-static {v0, v1, p0}, Lcom/sherdle/universal/util/DetailActivity;->blendColors(IIF)I

    move-result p0

    return p0
.end method

.method private getActionBarHeight()I
    .locals 5

    .line 146
    invoke-virtual {p0}, Lcom/sherdle/universal/util/DetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 149
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 150
    invoke-virtual {p0}, Lcom/sherdle/universal/util/DetailActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 152
    invoke-virtual {p0}, Lcom/sherdle/universal/util/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getStartColor(Landroid/content/Context;)I
    .locals 1

    .line 185
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->getPrimaryDarkColor(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f060023

    .line 188
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private handleScroll(I)V
    .locals 5

    .line 89
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/sherdle/universal/util/DetailActivity;->mScrollableHeaderHeight:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/sherdle/universal/util/DetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    .line 97
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    iget v3, p0, Lcom/sherdle/universal/util/DetailActivity;->mScrollableHeaderHeight:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    goto :goto_1

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    .line 101
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    iget v3, p0, Lcom/sherdle/universal/util/DetailActivity;->mScrollableHeaderHeight:I

    sub-int/2addr v3, v0

    .line 105
    :goto_1
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v4, v3, :cond_3

    .line 107
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 108
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/sherdle/universal/util/DetailActivity;->FadeBar:Z

    if-eqz v0, :cond_6

    .line 119
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lcom/sherdle/universal/util/DetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 123
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 127
    iget v1, p0, Lcom/sherdle/universal/util/DetailActivity;->latestAlpha:I

    if-eq v0, v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/sherdle/universal/util/DetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 129
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/sherdle/universal/util/DetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {p1}, Lcom/sherdle/universal/util/DetailActivity;->blendToolbarContentColors(F)I

    move-result p1

    invoke-static {v1, p1}, Lcom/sherdle/universal/util/ThemeUtils;->setToolbarContentColor(Landroid/support/v7/widget/Toolbar;I)V

    goto :goto_3

    .line 133
    :cond_4
    invoke-static {p1, p0}, Lcom/sherdle/universal/util/DetailActivity;->blendStatusBarColors(FLandroid/content/Context;)I

    move-result p1

    .line 132
    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 137
    :cond_5
    :goto_3
    iput v0, p0, Lcom/sherdle/universal/util/DetailActivity;->latestAlpha:I

    :cond_6
    return-void
.end method

.method private isTablet()Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/sherdle/universal/util/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private setParralaxHeader()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/sherdle/universal/util/DetailActivity;->mScrollableHeaderHeight:I

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/sherdle/universal/util/DetailActivity;->mScrollableHeaderHeight:I

    .line 67
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/util/DetailActivity$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/util/DetailActivity$1;-><init>(Lcom/sherdle/universal/util/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    const v0, 0x7f09015d

    .line 76
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/util/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/util/layout/TrackingScrollView;

    new-instance v1, Lcom/sherdle/universal/util/DetailActivity$2;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/util/DetailActivity$2;-><init>(Lcom/sherdle/universal/util/DetailActivity;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/util/layout/TrackingScrollView;->setOnScrollChangedListener(Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 194
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 201
    iget-boolean v0, p0, Lcom/sherdle/universal/util/DetailActivity;->FadeBar:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/sherdle/universal/util/DetailActivity;->latestAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method protected setUpHeader(Ljava/lang/String;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    iput-boolean v1, p0, Lcom/sherdle/universal/util/DetailActivity;->FadeBar:Z

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/util/DetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, ""

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->setParralaxHeader()V

    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result p1

    if-nez p1, :cond_2

    .line 46
    iget-object p1, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->getActionBarHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    iput-boolean v1, p0, Lcom/sherdle/universal/util/DetailActivity;->FadeBar:Z

    goto :goto_1

    .line 48
    :cond_2
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;->setParralaxHeader()V

    .line 50
    iget-object p1, p0, Lcom/sherdle/universal/util/DetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 53
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/sherdle/universal/util/DetailActivity;->FadeBar:Z

    if-eqz p1, :cond_4

    .line 54
    iget-object p1, p0, Lcom/sherdle/universal/util/DetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 56
    invoke-static {p0}, Lcom/sherdle/universal/util/DetailActivity;->getStartColor(Landroid/content/Context;)I

    move-result p1

    .line 55
    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 57
    invoke-virtual {p0}, Lcom/sherdle/universal/util/DetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 58
    iget-object p1, p0, Lcom/sherdle/universal/util/DetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0600a8

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/ThemeUtils;->setToolbarContentColor(Landroid/support/v7/widget/Toolbar;I)V

    :cond_4
    return-void
.end method
