.class public Lcom/sherdle/universal/comments/CommentsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sherdle/universal/comments/Comment;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/comments/Comment;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsAdapter;->context:Landroid/content/Context;

    .line 26
    iput p3, p0, Lcom/sherdle/universal/comments/CommentsAdapter;->type:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 31
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/comments/Comment;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0021

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;

    invoke-direct {p3, p0}, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;-><init>(Lcom/sherdle/universal/comments/CommentsAdapter;)V

    const v1, 0x7f0900d2

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->ivProfilePhoto:Landroid/widget/ImageView;

    const v1, 0x7f0901b5

    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->tvUsername:Landroid/widget/TextView;

    const v1, 0x7f0901b4

    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->tvComment:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;

    .line 46
    :goto_0
    iget-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->ivProfilePhoto:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    iget-object v1, p1, Lcom/sherdle/universal/comments/Comment;->profileUrl:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->ivProfilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v4, p1, Lcom/sherdle/universal/comments/Comment;->profileUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v4, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->ivProfilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 52
    :cond_1
    iget-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->ivProfilePhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_1
    iget-object v1, p1, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->tvUsername:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 59
    :cond_2
    iget-object v1, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->tvUsername:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_2
    iget-object p3, p3, Lcom/sherdle/universal/comments/CommentsAdapter$CommentViewHolder;->tvComment:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sherdle/universal/comments/Comment;->text:Ljava/lang/String;

    const-string v3, "<img.+?>"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget p3, p0, Lcom/sherdle/universal/comments/CommentsAdapter;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_JETPACK:I

    if-eq p3, v1, :cond_3

    iget p3, p0, Lcom/sherdle/universal/comments/CommentsAdapter;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_JSON:I

    if-eq p3, v1, :cond_3

    iget p3, p0, Lcom/sherdle/universal/comments/CommentsAdapter;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_REST:I

    if-ne p3, v1, :cond_4

    :cond_3
    const p3, 0x7f0900e0

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 68
    :goto_3
    iget v1, p1, Lcom/sherdle/universal/comments/Comment;->linesCount:I

    if-ge v0, v1, :cond_4

    .line 69
    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsAdapter;->context:Landroid/content/Context;

    const v3, 0x7f0b001f

    invoke-static {v1, v3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-object p2
.end method
