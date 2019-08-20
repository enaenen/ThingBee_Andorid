.class public Lcom/sherdle/universal/providers/twitter/TweetAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "TweetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private tweets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/twitter/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/twitter/Tweet;",
            ">;",
            "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 38
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->tweets:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/twitter/TweetAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 55
    instance-of v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;

    .line 57
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->tweets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/providers/twitter/Tweet;

    .line 59
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->username:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getusername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->date:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->message:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getmessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->message:Landroid/widget/TextView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/sherdle/universal/util/WebHelper;->getTextViewFontSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->retweetCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getRetweetCount()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->geturlProfileImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->imagem:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 68
    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->photo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 72
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->photo:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;-><init>(Lcom/sherdle/universal/providers/twitter/TweetAdapter;Lcom/sherdle/universal/providers/twitter/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->photo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->photo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :goto_0
    iget-object v0, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->itemView:Landroid/view/View;

    const v1, 0x7f09016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;-><init>(Lcom/sherdle/universal/providers/twitter/TweetAdapter;Lcom/sherdle/universal/providers/twitter/Tweet;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p1, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;-><init>(Lcom/sherdle/universal/providers/twitter/TweetAdapter;Lcom/sherdle/universal/providers/twitter/Tweet;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected getCount()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->tweets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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

    const v0, 0x7f0b005e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;-><init>(Lcom/sherdle/universal/providers/twitter/TweetAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
