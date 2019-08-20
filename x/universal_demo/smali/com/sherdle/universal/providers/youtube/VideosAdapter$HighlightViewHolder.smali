.class Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;
.super Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;
.source "VideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/youtube/VideosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HighlightViewHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090196

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;->date:Landroid/widget/TextView;

    const v0, 0x7f090197

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0900be

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$HighlightViewHolder;->thumb:Landroid/widget/ImageView;

    return-void
.end method
