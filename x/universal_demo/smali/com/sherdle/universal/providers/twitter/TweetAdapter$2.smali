.class Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;
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

    .line 85
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 88
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://twitter.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/twitter/Tweet;->getusername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/status/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/twitter/Tweet;->getTweetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->val$tweet:Lcom/sherdle/universal/providers/twitter/Tweet;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/twitter/Tweet;->getusername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    .line 94
    invoke-static {v2}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->access$000(Lcom/sherdle/universal/providers/twitter/TweetAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->access$000(Lcom/sherdle/universal/providers/twitter/TweetAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/twitter/TweetAdapter$2;->this$0:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-static {v1}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->access$000(Lcom/sherdle/universal/providers/twitter/TweetAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ee

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
