.class Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;
.super Ljava/lang/Object;
.source "VideosAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/VideosAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/VideosAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;->this$0:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 98
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;->this$0:Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->access$000(Lcom/sherdle/universal/providers/youtube/VideosAdapter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/sherdle/universal/providers/youtube/VideosAdapter$1;->val$position:I

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
