.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


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

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$702(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$600()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$202(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$500(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)V

    .line 248
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$4;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 p1, 0x1

    return p1
.end method
