.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$400(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$500(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$2;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
