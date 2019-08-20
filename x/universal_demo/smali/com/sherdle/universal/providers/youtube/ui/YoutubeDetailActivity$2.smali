.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;
.super Ljava/lang/Object;
.source "YoutubeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 110
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    new-instance v0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$102(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 111
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$100(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 113
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$100(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/youtube/api/object/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/youtube/api/object/Video;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->checkEvent(Ljava/lang/String;Ljava/io/Serializable;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$100(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/youtube/api/object/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {v3}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/youtube/api/object/Video;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->addFavorite(Ljava/lang/String;Ljava/io/Serializable;I)J

    .line 116
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    .line 117
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0071

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    .line 124
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
