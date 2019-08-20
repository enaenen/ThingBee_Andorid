.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 84
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 87
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 88
    check-cast p1, Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 90
    iget-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p2}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$200(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$100()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p3}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;

    move-result-object p3

    const-class p4, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "video_id"

    .line 93
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 94
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p3}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Landroid/app/Activity;

    move-result-object p3

    const-class p4, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "videoitem"

    .line 98
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$1;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
