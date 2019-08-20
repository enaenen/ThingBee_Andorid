.class Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;
.super Ljava/lang/Object;
.source "TweetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/twitter/TweetAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

.field final synthetic val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/twitter/TweetAdapter;Lcom/sherdle/universal/providers/twitter/Tweet;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->access$000(Lcom/sherdle/universal/providers/twitter/TweetAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$1;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    .line 76
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/twitter/Tweet;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    return-void
.end method
