.class Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/rss/RssAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RssViewHolder"
.end annotation


# instance fields
.field listDescription:Landroid/widget/TextView;

.field listPubdate:Landroid/widget/TextView;

.field listThumb:Landroid/widget/ImageView;

.field listTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/rss/RssAdapter;Landroid/view/View;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

    .line 161
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900e8

    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listTitle:Landroid/widget/TextView;

    const p1, 0x7f0900e6

    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listPubdate:Landroid/widget/TextView;

    const p1, 0x7f09016c

    .line 164
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listDescription:Landroid/widget/TextView;

    const p1, 0x7f0900e7

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssViewHolder;->listThumb:Landroid/widget/ImageView;

    return-void
.end method
