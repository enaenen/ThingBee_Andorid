.class Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TweetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/twitter/TweetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TweetHolder"
.end annotation


# instance fields
.field date:Landroid/widget/TextView;

.field imagem:Landroid/widget/ImageView;

.field message:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field photo:Landroid/widget/ImageView;

.field retweetCount:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

.field username:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/twitter/TweetAdapter;Landroid/view/View;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    .line 130
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090100

    .line 132
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->name:Landroid/widget/TextView;

    const p1, 0x7f0901c1

    .line 133
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->username:Landroid/widget/TextView;

    const p1, 0x7f09013a

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->imagem:Landroid/widget/ImageView;

    const p1, 0x7f090121

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->photo:Landroid/widget/ImageView;

    const p1, 0x7f0900fb

    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->message:Landroid/widget/TextView;

    const p1, 0x7f09014d

    .line 137
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->retweetCount:Landroid/widget/TextView;

    const p1, 0x7f090060

    .line 138
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$TweetHolder;->date:Landroid/widget/TextView;

    return-void
.end method
