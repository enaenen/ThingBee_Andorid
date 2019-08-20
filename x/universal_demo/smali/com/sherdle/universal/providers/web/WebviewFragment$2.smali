.class Lcom/sherdle/universal/providers/web/WebviewFragment$2;
.super Ljava/lang/Object;
.source "WebviewFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/web/WebviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$2;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$2;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/web/WebviewFragment;->access$000(Lcom/sherdle/universal/providers/web/WebviewFragment;)Lcom/sherdle/universal/providers/web/AdvancedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->reload()V

    return-void
.end method
