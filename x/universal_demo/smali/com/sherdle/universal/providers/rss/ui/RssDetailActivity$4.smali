.class Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;
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

    .line 165
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 168
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    new-instance v0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$102(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 169
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$100(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 171
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$100(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->checkEvent(Ljava/lang/String;Ljava/io/Serializable;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$100(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-static {v3}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->addFavorite(Ljava/lang/String;Ljava/io/Serializable;I)J

    .line 174
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
