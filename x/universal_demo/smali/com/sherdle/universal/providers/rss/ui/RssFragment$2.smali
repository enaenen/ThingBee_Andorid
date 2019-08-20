.class Lcom/sherdle/universal/providers/rss/ui/RssFragment$2;
.super Ljava/lang/Object;
.source "RssFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/rss/ui/RssFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$2;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modeChanged()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$2;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$400(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RssAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RssAdapter;->notifyDataSetChanged()V

    return-void
.end method
