.class Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;
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

    .line 102
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://twitter.com/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/twitter/Tweet;->getusername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/status/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/twitter/Tweet;->getTweetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$3;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->access$000(Lcom/sherdle/universal/providers/twitter/TweetAdapter;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
