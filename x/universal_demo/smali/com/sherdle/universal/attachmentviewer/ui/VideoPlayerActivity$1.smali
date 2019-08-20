.class Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;

.field final synthetic val$videoView:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;Landroid/widget/VideoView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;

    const v0, 0x7f0901c3

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 46
    new-instance p1, Landroid/widget/MediaController;

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;

    invoke-direct {p1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 49
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;->val$videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
