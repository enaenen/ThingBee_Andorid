.class Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;
.super Ljava/lang/Object;
.source "InstagramPhotosAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

.field final synthetic val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Lcom/sherdle/universal/providers/instagram/InstagramPhoto;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->access$000(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$1;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    iget-object v0, v0, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    return-void
.end method
