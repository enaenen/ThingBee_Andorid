.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;
.super Ljava/lang/Object;
.source "WordpressFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 197
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modeChanged()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v0}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->removeSlider()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->notifyDataSetChanged()V

    return-void
.end method
