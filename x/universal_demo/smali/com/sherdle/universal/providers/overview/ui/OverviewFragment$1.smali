.class Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;
.super Ljava/lang/Object;
.source "OverviewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

.field final synthetic val$mLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;Landroid/support/v7/widget/StaggeredGridLayoutManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->val$mLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$000(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$000(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 80
    iget-object v2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->val$mLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 81
    iget-object v2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->val$mLayoutManager:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->requestLayout()V

    if-le v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$000(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$100(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/DividerItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$000(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$100(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/DividerItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :goto_0
    return-void
.end method
