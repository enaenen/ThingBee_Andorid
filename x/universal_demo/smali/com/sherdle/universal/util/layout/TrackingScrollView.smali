.class public Lcom/sherdle/universal/util/layout/TrackingScrollView;
.super Landroid/widget/ScrollView;
.source "TrackingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private mOnScrollChangedListener:Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/sherdle/universal/util/layout/TrackingScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 7

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 32
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/TrackingScrollView;->mOnScrollChangedListener:Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/sherdle/universal/util/layout/TrackingScrollView;->mOnScrollChangedListener:Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;->onScrollChanged(Lcom/sherdle/universal/util/layout/TrackingScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 39
    instance-of v0, p2, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setOnScrollChangedListener(Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/sherdle/universal/util/layout/TrackingScrollView;->mOnScrollChangedListener:Lcom/sherdle/universal/util/layout/TrackingScrollView$OnScrollChangedListener;

    return-void
.end method
