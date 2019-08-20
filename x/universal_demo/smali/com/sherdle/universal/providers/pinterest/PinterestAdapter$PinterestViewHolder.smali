.class Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PinterestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinterestViewHolder"
.end annotation


# instance fields
.field commentsCountView:Landroid/widget/TextView;

.field commentsView:Landroid/widget/ImageView;

.field dateView:Landroid/widget/TextView;

.field descriptionView:Landroid/widget/TextView;

.field inlineImg:Landroid/widget/ImageView;

.field openBtn:Landroid/widget/ImageView;

.field profileImg:Landroid/widget/ImageView;

.field repinCountView:Landroid/widget/TextView;

.field shareBtn:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

.field userNameView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Landroid/view/View;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    .line 143
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013a

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->profileImg:Landroid/widget/ImageView;

    const p1, 0x7f090100

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->userNameView:Landroid/widget/TextView;

    const p1, 0x7f090060

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->dateView:Landroid/widget/TextView;

    const p1, 0x7f090121

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->inlineImg:Landroid/widget/ImageView;

    const p1, 0x7f0900dd

    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->repinCountView:Landroid/widget/TextView;

    const p1, 0x7f0900fb

    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->descriptionView:Landroid/widget/TextView;

    const p1, 0x7f090053

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->commentsView:Landroid/widget/ImageView;

    const p1, 0x7f090054

    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->commentsCountView:Landroid/widget/TextView;

    const p1, 0x7f09016a

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->shareBtn:Landroid/widget/ImageView;

    const p1, 0x7f09010d

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;->openBtn:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Landroid/view/View;Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$PinterestViewHolder;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Landroid/view/View;)V

    return-void
.end method
