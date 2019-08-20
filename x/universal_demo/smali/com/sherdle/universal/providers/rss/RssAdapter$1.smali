.class Lcom/sherdle/universal/providers/rss/RssAdapter$1;
.super Ljava/lang/Object;
.source "RssAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/rss/RssAdapter;->setOnClickListener(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/rss/RssAdapter;I)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;->this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

    iput p2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 101
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;->this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/RssAdapter;->access$000(Lcom/sherdle/universal/providers/rss/RssAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "postitem"

    .line 104
    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;->this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

    invoke-static {v2}, Lcom/sherdle/universal/providers/rss/RssAdapter;->access$100(Lcom/sherdle/universal/providers/rss/RssAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RssAdapter$1;->this$0:Lcom/sherdle/universal/providers/rss/RssAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/RssAdapter;->access$000(Lcom/sherdle/universal/providers/rss/RssAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
