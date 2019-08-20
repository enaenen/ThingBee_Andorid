.class Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "PinterestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 34
    iput-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->objects:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    .line 51
    instance-of v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/pinterest/Pin;

    .line 53
    check-cast p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;

    .line 55
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->profileImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->creatorImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->profileImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 58
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->userNameView:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->creatorName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->dateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->context:Landroid/content/Context;

    iget-object v3, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->createdTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x240c8400

    const/high16 v9, 0x80000

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 65
    iget-object v0, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->type:Ljava/lang/String;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->inlineImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Lcom/sherdle/universal/providers/pinterest/Pin;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->inlineImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$2;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Lcom/sherdle/universal/providers/pinterest/Pin;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :goto_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->repinCountView:Landroid/widget/TextView;

    iget v1, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->repinCount:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->caption:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->descriptionView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->caption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->descriptionView:Landroid/widget/TextView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sherdle/universal/util/WebHelper;->getTextViewFontSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    :cond_1
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->shareBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$3;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Lcom/sherdle/universal/providers/pinterest/Pin;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->openBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$4;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Lcom/sherdle/universal/providers/pinterest/Pin;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget v0, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->commentsCount:I

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->commentsView:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->commentsView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object p1, p1, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->commentsCountView:Landroid/widget/TextView;

    iget p2, p2, Lcom/sherdle/universal/providers/pinterest/Pin;->commentsCount:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected getCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0056

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Landroid/view/View;Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;)V

    return-object p2
.end method

.method protected getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
