.class Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;
.super Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;
.source "VideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/youtube/VideosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoCompactViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/youtube/VideosAdapter;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/VideosAdapter;Landroid/view/View;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;->this$0:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    .line 116
    invoke-direct {p0, p2}, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901bc

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x7f0901ba

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;->date:Landroid/widget/TextView;

    const p1, 0x7f0901bb

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$VideoCompactViewHolder;->thumb:Landroid/widget/ImageView;

    return-void
.end method
