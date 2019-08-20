.class public Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "WordpressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderViewHolder;,
        Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;,
        Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;,
        Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$SliderViewHolder;,
        Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final HEADER_IMAGE:I = 0x2

.field private static final HEADER_TEXT:I = 0x3

.field private static final POST:I = 0x1

.field private static final POST_COMPACT:I = 0x0

.field private static final SLIDER:I = 0x4


# instance fields
.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mContext:Landroid/content/Context;

.field private number:I

.field private simpleMode:Z

.field private sliderView:Landroid/view/View;

.field private viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;Landroid/widget/AdapterView$OnItemClickListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Z)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 48
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p4, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 50
    iput-boolean p5, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->simpleMode:Z

    .line 51
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    .line 53
    new-instance p2, Lcom/sherdle/universal/util/ViewModeUtils;

    const-class p3, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-direct {p2, p1, p3}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private headerType(Lcom/sherdle/universal/providers/wordpress/PostItem;)I
    .locals 1

    .line 186
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method

.method private randomGradientResource()I
    .locals 3

    .line 193
    iget v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->number:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->number:I

    .line 194
    iget v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->number:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->number:I

    .line 196
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->number:I

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->getGradient(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 114
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 115
    instance-of v1, p1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 116
    move-object v1, p1

    check-cast v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;

    .line 118
    iget-object v3, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    const v3, 0x7f0800f7

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 121
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;->headlineView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;->dateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x240c8400

    const/high16 v9, 0x80000

    .line 122
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 127
    :cond_0
    instance-of v1, p1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;

    if-eqz v1, :cond_1

    .line 128
    move-object v1, p1

    check-cast v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;

    .line 130
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->randomGradientResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 132
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;->headlineView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;->dateView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x240c8400

    const/high16 v9, 0x80000

    .line 133
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 138
    :cond_1
    instance-of v1, p1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$SliderViewHolder;

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 140
    :cond_2
    instance-of v1, p1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;

    if-eqz v1, :cond_6

    .line 141
    move-object v1, p1

    check-cast v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;

    .line 143
    iget-object v3, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->headlineView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 148
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->reportedDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->reportedDateView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    const-wide/32 v10, 0x240c8400

    const/high16 v12, 0x80000

    .line 150
    invoke-static/range {v5 .. v12}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v5

    .line 149
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->reportedDateView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_0
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v2}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_5

    .line 163
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getThumbnailCandidate()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    const-string v2, ""

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 165
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 170
    :cond_6
    :goto_3
    instance-of v0, p1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$SliderViewHolder;

    if-nez v0, :cond_7

    .line 171
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$1;-><init>(Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 95
    :pswitch_0
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$SliderViewHolder;

    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->sliderView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$SliderViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object p1

    .line 89
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0082

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderTextViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object p2

    .line 82
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0081

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$HeaderImageViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->requestFullSpan(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-object p2

    .line 100
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0084

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 101
    new-instance p2, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 104
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0071

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 105
    new-instance p2, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getViewType(I)I
    .locals 4

    .line 63
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->simpleMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 66
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v2

    sget-object v3, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v2, v3, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    if-eqz p1, :cond_4

    .line 68
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p1}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p1}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    return v0

    :cond_3
    return v1

    .line 69
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->headerType(Lcom/sherdle/universal/providers/wordpress/PostItem;)I

    move-result p1

    return p1
.end method

.method public removeSlider()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->sliderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v2, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v0, v2, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->sliderView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setSlider(Landroid/view/View;)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->sliderView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    .line 202
    invoke-virtual {v0}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->listData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-instance v2, Lcom/sherdle/universal/providers/wordpress/PostItem;

    sget-object v3, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    invoke-direct {v2, v3}, Lcom/sherdle/universal/providers/wordpress/PostItem;-><init>(Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->sliderView:Landroid/view/View;

    .line 208
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->notifyDataSetChanged()V

    return-void
.end method
