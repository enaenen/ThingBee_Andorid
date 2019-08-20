.class Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;
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

.field final synthetic val$audioUrl:Ljava/lang/String;

.field final synthetic val$videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->val$videoUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->val$audioUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->val$videoUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->val$videoUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->val$audioUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->val$audioUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
