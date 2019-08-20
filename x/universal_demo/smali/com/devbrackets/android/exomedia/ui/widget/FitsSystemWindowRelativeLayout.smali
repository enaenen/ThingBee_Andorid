.class public Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "FitsSystemWindowRelativeLayout.java"


# instance fields
.field private originalPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    return-void
.end method

.method private navBarCanMove()Z
    .locals 3

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private setup()V
    .locals 5

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setFitsSystemWindows(Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    .line 91
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->updatePadding(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updatePadding(Landroid/graphics/Rect;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 102
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 103
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p1

    .line 105
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->originalPadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->updatePadding(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 69
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 70
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 71
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->navBarCanMove()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/ui/widget/FitsSystemWindowRelativeLayout;->setup()V

    :cond_0
    return-void
.end method
