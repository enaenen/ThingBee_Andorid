.class public Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "HackyViewPager.java"


# instance fields
.field private isLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;->isLocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;->isLocked:Z

    return-void
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;->isLocked:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 47
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setLocked(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;->isLocked:Z

    return-void
.end method
