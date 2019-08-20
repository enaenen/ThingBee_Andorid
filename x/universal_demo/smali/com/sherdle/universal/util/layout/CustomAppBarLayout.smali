.class public Lcom/sherdle/universal/util/layout/CustomAppBarLayout;
.super Landroid/support/design/widget/AppBarLayout;
.source "CustomAppBarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;,
        Lcom/sherdle/universal/util/layout/CustomAppBarLayout$OnStateChangeListener;
    }
.end annotation


# instance fields
.field private onStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/util/layout/CustomAppBarLayout$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private notifyListeners(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$OnStateChangeListener;

    .line 72
    invoke-interface {v1, p1}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$OnStateChangeListener;->onStateChange(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnStateChangeListener(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$OnStateChangeListener;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isToolbarHidden()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    sget-object v1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->COLLAPSED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/support/design/widget/AppBarLayout;->onAttachedToWindow()V

    .line 40
    invoke-virtual {p0}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0, p0}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    return-void

    .line 42
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MyAppBarLayout must be a direct child of CoordinatorLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 0

    if-nez p2, :cond_1

    .line 51
    iget-object p1, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    sget-object p2, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->EXPANDED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    if-eq p1, p2, :cond_0

    .line 52
    sget-object p1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->EXPANDED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    invoke-direct {p0, p1}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->notifyListeners(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;)V

    .line 54
    :cond_0
    sget-object p1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->EXPANDED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    iput-object p1, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    if-lt p2, p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    sget-object p2, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->COLLAPSED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    if-eq p1, p2, :cond_2

    .line 57
    sget-object p1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->COLLAPSED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    invoke-direct {p0, p1}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->notifyListeners(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;)V

    .line 59
    :cond_2
    sget-object p1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->COLLAPSED:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    iput-object p1, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    goto :goto_0

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    sget-object p2, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->IDLE:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    if-eq p1, p2, :cond_4

    .line 62
    sget-object p1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->IDLE:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    invoke-direct {p0, p1}, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->notifyListeners(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;)V

    .line 64
    :cond_4
    sget-object p1, Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;->IDLE:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    iput-object p1, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->state:Lcom/sherdle/universal/util/layout/CustomAppBarLayout$State;

    :goto_0
    return-void
.end method

.method public removeOnStateChangeListener(Lcom/sherdle/universal/util/layout/CustomAppBarLayout$OnStateChangeListener;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/CustomAppBarLayout;->onStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
