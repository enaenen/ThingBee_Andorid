.class Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;
.super Ljava/lang/Object;
.source "RssFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/rss/ui/RssFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 81
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$000(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V

    return-void
.end method
