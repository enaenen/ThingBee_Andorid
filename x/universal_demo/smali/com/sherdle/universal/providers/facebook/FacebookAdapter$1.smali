.class Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

.field final synthetic val$viewHolder:Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;->val$viewHolder:Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->access$000(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    .line 84
    invoke-static {v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->access$100(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$1;->val$viewHolder:Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;

    iget-object v1, v1, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$FacebookItemViewHolder;->inlineImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/facebook/FacebookItem;

    iget-object v0, v0, Lcom/sherdle/universal/providers/facebook/FacebookItem;->imageUrl:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    return-void
.end method
