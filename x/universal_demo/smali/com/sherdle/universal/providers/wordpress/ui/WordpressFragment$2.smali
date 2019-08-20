.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;
.super Ljava/lang/Object;
.source "WordpressFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getPosts()V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$300(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
