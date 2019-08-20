.class public Lcom/sherdle/universal/util/layout/DisableableViewPager;
.super Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.source "DisableableViewPager.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/sherdle/universal/util/layout/DisableableViewPager;->enabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/sherdle/universal/util/layout/DisableableViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/sherdle/universal/util/layout/DisableableViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/sherdle/universal/util/layout/DisableableViewPager;->enabled:Z

    return-void
.end method
