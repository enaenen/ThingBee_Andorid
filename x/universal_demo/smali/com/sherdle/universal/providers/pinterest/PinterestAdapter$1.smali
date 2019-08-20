.class Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;
.super Ljava/lang/Object;
.source "PinterestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

.field final synthetic val$pin:Lcom/sherdle/universal/providers/pinterest/Pin;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;Lcom/sherdle/universal/providers/pinterest/Pin;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;->val$pin:Lcom/sherdle/universal/providers/pinterest/Pin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->access$100(Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter$1;->val$pin:Lcom/sherdle/universal/providers/pinterest/Pin;

    iget-object v0, v0, Lcom/sherdle/universal/providers/pinterest/Pin;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    return-void
.end method
