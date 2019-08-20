.class public Lcom/sherdle/universal/util/CustomScrollingViewBehavior;
.super Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.source "CustomScrollingViewBehavior.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final SCROLL_DIRECTION_UP:I = -0x1


# instance fields
.field private appBarLayout:Landroid/view/View;

.field private dynamicElevation:Z

.field private isElevated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setElevated(ZLandroid/content/Context;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->appBarLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->appBarLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->toolbarElevation(Landroid/content/Context;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method private static toolbarElevation(Landroid/content/Context;)F
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700c5

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 149
    invoke-virtual {p1, p0}, Landroid/support/design/widget/CoordinatorLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 151
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 152
    iput-object p3, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->appBarLayout:Landroid/view/View;

    .line 154
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 210
    iget-boolean p2, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->dynamicElevation:Z

    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->setElevated(ZLandroid/content/Context;)V

    .line 212
    iput-boolean p2, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->isElevated:Z

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->setElevated(ZLandroid/content/Context;)V

    .line 215
    iput-boolean p2, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->isElevated:Z

    :goto_0
    return-void
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 9
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v8, p0

    move-object v0, p3

    .line 174
    iget-boolean v1, v8, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->dynamicElevation:Z

    if-eqz v1, :cond_4

    .line 175
    instance-of v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 176
    move-object v1, v0

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 177
    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    .line 178
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_4

    .line 183
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    const/4 v3, -0x1

    .line 185
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget-boolean v1, v8, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->isElevated:Z

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v2, v1}, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->setElevated(ZLandroid/content/Context;)V

    .line 192
    :cond_1
    iput-boolean v2, v8, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->isElevated:Z

    goto :goto_0

    .line 194
    :cond_2
    iget-boolean v1, v8, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->isElevated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 195
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v2, v1}, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->setElevated(ZLandroid/content/Context;)V

    .line 200
    :cond_3
    iput-boolean v2, v8, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->isElevated:Z

    :cond_4
    :goto_0
    move-object v3, v0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 205
    invoke-super/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-eq p5, v0, :cond_1

    .line 164
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setDynamicElevation(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/sherdle/universal/util/CustomScrollingViewBehavior;->dynamicElevation:Z

    return-void
.end method
