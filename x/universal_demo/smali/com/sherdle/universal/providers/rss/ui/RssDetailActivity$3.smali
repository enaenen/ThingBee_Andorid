.class Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$3;
.super Ljava/lang/Object;
.source "RssDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 156
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;->getLink()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
