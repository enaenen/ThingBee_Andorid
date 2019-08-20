.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;
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

    .line 93
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    const-class v1, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "video_id"

    .line 98
    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/youtube/api/object/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
