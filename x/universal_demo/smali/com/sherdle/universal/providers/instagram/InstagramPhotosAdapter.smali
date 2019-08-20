.class public Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "InstagramPhotosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/instagram/InstagramPhoto;",
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
            "Lcom/sherdle/universal/providers/instagram/InstagramPhoto;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 38
    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->objects:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 55
    instance-of v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    .line 57
    check-cast p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;

    .line 59
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->profileImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->profileImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->username:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->username:Ljava/lang/String;

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v2, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->userNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->dateView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->context:Landroid/content/Context;

    iget-object v2, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->createdTime:Ljava/util/Date;

    .line 67
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    const-wide/32 v10, 0x240c8400

    const/high16 v12, 0x80000

    invoke-static/range {v5 .. v12}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 75
    iget-object v0, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    .line 81
    :goto_0
    iget-object v0, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->type:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImg:Landroid/widget/ImageView;

    new-instance v2, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$2;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V

    .line 97
    iget-object v2, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->likesCountView:Landroid/widget/TextView;

    iget v2, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->likesCount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->caption:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->descriptionView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->caption:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->descriptionView:Landroid/widget/TextView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sherdle/universal/util/WebHelper;->getTextViewFontSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 108
    :cond_3
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_2
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->shareBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$3;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->openBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$4;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->commentsCountView:Landroid/widget/TextView;

    iget v1, p2, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->commentsCount:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object p1, p1, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->commentsBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method protected getCount()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->objects:Ljava/util/List;

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
    new-instance p2, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
