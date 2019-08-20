.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;
.super Ljava/lang/Object;
.source "WordpressFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;->val$searchView:Landroid/support/v7/widget/SearchView;

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
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 155
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 161
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->getSearchPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$402(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
