.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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

    .line 261
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 265
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$400(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->getTypeBasedOnParameters()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$202(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$702(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$5;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$500(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    :cond_0
    return-void
.end method
