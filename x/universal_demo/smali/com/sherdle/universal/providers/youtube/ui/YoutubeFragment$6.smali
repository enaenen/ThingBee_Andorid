.class Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$6;
.super Ljava/lang/Object;
.source "YoutubeFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 309
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$6;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modeChanged()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment$6;->this$0:Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;->access$1300(Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;)Lcom/sherdle/universal/providers/youtube/VideosAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/VideosAdapter;->notifyDataSetChanged()V

    return-void
.end method
