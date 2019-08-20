.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->loadVideosInList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

.field final synthetic val$nextPageToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->val$nextPageToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$800(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$700(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getIdBasedOnParameters()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->val$nextPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;->getSearchVideos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$800(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getIdBasedOnParameters()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->val$nextPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;->getPlaylistVideos(Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$800(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getIdBasedOnParameters()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->val$nextPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;->getLiveVideos(Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$800(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getIdBasedOnParameters()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->val$nextPageToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/youtube/api/RetrieveVideos;->getUserVideos(Ljava/lang/String;Ljava/lang/String;)Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;->getPageToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1102(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;

    invoke-direct {v2, p0, v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
