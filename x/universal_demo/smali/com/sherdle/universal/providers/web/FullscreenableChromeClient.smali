.class public Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "FullscreenableChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/web/FullscreenableChromeClient$FullscreenHolder;
    }
.end annotation


# static fields
.field private static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenContainer:Landroid/widget/FrameLayout;

.field private mOriginalOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private setFullscreen(Z)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 97
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v2, 0xf06

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 109
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v2, 0x100

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 83
    new-instance p1, Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object p2, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sherdle/universal/providers/web/AdvancedWebView;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object p2, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Landroid/webkit/WebView$WebViewTransport;

    .line 86
    invoke-virtual {p2, p1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 87
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onHideCustomView()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->setFullscreen(Z)V

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 70
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 72
    iput-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomView:Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 74
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p3}, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mOriginalOrientation:I

    .line 43
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 44
    new-instance v1, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient$FullscreenHolder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 45
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomView:Landroid/view/View;

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->setFullscreen(Z)V

    .line 49
    iput-object p2, p0, Lcom/sherdle/universal/providers/web/FullscreenableChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
