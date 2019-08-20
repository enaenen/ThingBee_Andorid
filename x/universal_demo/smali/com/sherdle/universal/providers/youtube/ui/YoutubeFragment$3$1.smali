.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

.field final synthetic val$videos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;Ljava/util/ArrayList;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->val$videos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 188
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$402(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Z)Z

    .line 190
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->val$videos:Ljava/util/ArrayList;

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->val$videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->updateList(Ljava/util/ArrayList;)V

    .line 195
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->val$videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0072

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v3, v3, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v3}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v2, 0x7f0901d4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->val$videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v3, v3, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    const v4, 0x7f0f0104

    .line 207
    invoke-virtual {v3, v4}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v4, v4, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    const v5, 0x7f0f0103

    .line 208
    invoke-virtual {v4, v5}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    invoke-virtual {v0, v3, v4}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setEmptyViewText(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setModeAndNotify(I)V

    .line 210
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1400(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    .line 216
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->setModeAndNotify(I)V

    .line 217
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3$1;->this$1:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;

    iget-object v0, v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$3;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1400(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_4
    :goto_0
    return-void
.end method
