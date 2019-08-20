.class public Lcom/sherdle/universal/providers/overview/CategoryAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;,
        Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;,
        Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;
    }
.end annotation


# static fields
.field private static final IMAGE_TYPE:I = 0x1

.field private static final TEXT_TYPE:I


# instance fields
.field private callback:Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;

.field private context:Landroid/content/Context;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation
.end field

.field private number:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p2, v0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 40
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->callback:Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/overview/CategoryAdapter;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/overview/CategoryAdapter;)Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->callback:Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;

    return-object p0
.end method

.method private randomGradientResource()I
    .locals 3

    .line 128
    iget v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->number:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->number:I

    .line 129
    iget v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->number:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->number:I

    .line 131
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->number:I

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->getGradient(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 71
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;-><init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    instance-of v0, p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;

    iget-object v0, p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/drawer/NavItem;

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/sherdle/universal/drawer/NavItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;->background:Landroid/view/View;

    invoke-direct {p0}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->randomGradientResource()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    .line 85
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/drawer/NavItem;

    invoke-virtual {v1}, Lcom/sherdle/universal/drawer/NavItem;->getCategoryImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f060025

    .line 86
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    check-cast p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;

    iget-object v1, p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;->image:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 88
    iget-object p1, p1, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/drawer/NavItem;

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/drawer/NavItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 60
    new-instance p2, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0055

    .line 61
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/sherdle/universal/providers/overview/CategoryAdapter$TextViewHolder;-><init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;)V

    return-object p2

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 63
    new-instance p2, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0054

    .line 64
    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1, v1}, Lcom/sherdle/universal/providers/overview/CategoryAdapter$ImageViewHolder;-><init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/view/View;Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method protected getViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/drawer/NavItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/drawer/NavItem;->getCategoryImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/drawer/NavItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/NavItem;->getCategoryImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 53
    :cond_1
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method
