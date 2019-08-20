.class public Lcom/rubengees/introduction/common/DotIndicatorManager;
.super Lcom/rubengees/introduction/interfaces/IndicatorManager;
.source "DotIndicatorManager.java"


# instance fields
.field private root:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/rubengees/introduction/interfaces/IndicatorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 41
    sget v0, Lcom/rubengees/introduction/R$layout;->introduction_indicator_layout_dot:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/rubengees/introduction/common/DotIndicatorManager;->root:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 45
    sget v0, Lcom/rubengees/introduction/R$layout;->introduction_indicator_item_dot:I

    iget-object v2, p0, Lcom/rubengees/introduction/common/DotIndicatorManager;->root:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    iget-object v2, p0, Lcom/rubengees/introduction/common/DotIndicatorManager;->root:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/rubengees/introduction/common/DotIndicatorManager;->root:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public select(I)V
    .locals 3

    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/rubengees/introduction/common/DotIndicatorManager;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/rubengees/introduction/common/DotIndicatorManager;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 60
    sget v2, Lcom/rubengees/introduction/R$drawable;->introduction_dot_white:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 62
    :cond_0
    sget v2, Lcom/rubengees/introduction/R$drawable;->introduction_dot_transparent_grey:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
