.class public Lcom/sherdle/universal/providers/facebook/FacebookAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 38
    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->objects:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->objects:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 56
    instance-of v2, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;

    if-eqz v2, :cond_3

    .line 57
    check-cast v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;

    .line 58
    iget-object v2, v0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->objects:Ljava/util/List;

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;

    .line 60
    iget-object v4, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->profilePicImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v6, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v6, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->profilePicImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->username:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    iget-object v6, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->userNameView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v4, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->dateView:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->context:Landroid/content/Context;

    iget-object v6, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->createdTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    const-wide/32 v14, 0x240c8400

    const/high16 v16, 0x80000

    invoke-static/range {v9 .. v16}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v4, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v4

    iget-object v5, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    const v5, 0x7f0800f7

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 72
    iget-object v4, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v3, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v3, v8}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 79
    :goto_0
    iget-object v3, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->type:Ljava/lang/String;

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    new-instance v4, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;

    invoke-direct {v4, v0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v3, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    new-instance v3, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$2;

    invoke-direct {v3, v0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$2;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;)V

    .line 98
    iget-object v4, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v4, v3}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v4, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_2
    :goto_1
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->likesCountView:Landroid/widget/TextView;

    iget v4, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->likesCount:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->contentView:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->caption:Ljava/lang/String;

    const-string v5, "\n"

    const-string v6, "<br>"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->contentView:Landroid/widget/TextView;

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sherdle/universal/util/WebHelper;->getTextViewFontSize(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->shareBtn:Landroid/widget/ImageView;

    new-instance v4, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$3;

    invoke-direct {v4, v0, v2}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$3;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->openBtn:Landroid/widget/ImageView;

    new-instance v4, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;

    invoke-direct {v4, v0, v2}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v3, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->commentsCountView:Landroid/widget/TextView;

    iget v4, v2, Lcom/sherdle/universal/providers/facebook/FacebookItem;->commentsCount:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->commentsBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;

    invoke-direct {v3, v0, v2}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected getCount()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0050

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
