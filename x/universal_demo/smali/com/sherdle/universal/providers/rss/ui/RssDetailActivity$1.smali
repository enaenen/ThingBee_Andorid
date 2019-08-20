.class Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;
.super Landroid/webkit/WebViewClient;
.source "RssDetailActivity.java"


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

    .line 94
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    const-string v0, ".png"

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpg"

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpeg"

    .line 99
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {p2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    return p1

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const-string v1, "http://"

    .line 104
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    const/4 v2, 0x0

    invoke-static {v1, p2, v0, v0, v2}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return p1

    .line 108
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 113
    invoke-virtual {p2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 114
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    .line 118
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-virtual {p2, v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    return p1
.end method
