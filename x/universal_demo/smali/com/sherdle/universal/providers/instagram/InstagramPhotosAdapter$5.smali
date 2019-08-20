.class Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;
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

    .line 136
    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 139
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->access$000(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sherdle/universal/comments/CommentsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->INSTAGRAM:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    iget-object v1, v1, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->commentsJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;->val$photo:Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    iget-object v1, v1, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$5;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->access$000(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
