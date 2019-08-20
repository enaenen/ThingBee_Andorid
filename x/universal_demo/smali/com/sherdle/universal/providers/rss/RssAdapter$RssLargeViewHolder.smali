.class Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RssAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/rss/RssAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RssLargeViewHolder"
.end annotation


# instance fields
.field headlineView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field reportedDateView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901a2

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->headlineView:Landroid/widget/TextView;

    const v0, 0x7f090060

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->reportedDateView:Landroid/widget/TextView;

    const v0, 0x7f09019d

    .line 179
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$RssLargeViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method
