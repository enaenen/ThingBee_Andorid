.class Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookItemViewHolder"
.end annotation


# instance fields
.field commentsBtn:Landroid/widget/ImageView;

.field commentsCountView:Landroid/widget/TextView;

.field contentView:Landroid/widget/TextView;

.field dateView:Landroid/widget/TextView;

.field inlineImg:Landroid/widget/ImageView;

.field inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

.field likesCountView:Landroid/widget/TextView;

.field openBtn:Landroid/widget/ImageView;

.field profilePicImg:Landroid/widget/ImageView;

.field shareBtn:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

.field userNameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Landroid/view/View;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    .line 163
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013a

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->profilePicImg:Landroid/widget/ImageView;

    const p1, 0x7f090100

    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->userNameView:Landroid/widget/TextView;

    const p1, 0x7f090060

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->dateView:Landroid/widget/TextView;

    const p1, 0x7f090121

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    const p1, 0x7f09012f

    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    const p1, 0x7f0900dd

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->likesCountView:Landroid/widget/TextView;

    const p1, 0x7f090054

    .line 171
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->commentsCountView:Landroid/widget/TextView;

    const p1, 0x7f0900fb

    .line 172
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->contentView:Landroid/widget/TextView;

    const p1, 0x7f09016a

    .line 173
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->shareBtn:Landroid/widget/ImageView;

    const p1, 0x7f09010d

    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->openBtn:Landroid/widget/ImageView;

    const p1, 0x7f090053

    .line 175
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->commentsBtn:Landroid/widget/ImageView;

    return-void
.end method
