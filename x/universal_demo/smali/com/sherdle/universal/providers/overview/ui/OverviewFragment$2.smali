.class Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;
.super Ljava/lang/Object;
.source "OverviewFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->loadItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public categoriesLoaded(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 112
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$200(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->isOnlineShowDialog(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0f0083

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 114
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$300(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->setModeAndNotify(I)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {p2}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$400(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;->this$0:Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->access$300(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->setModeAndNotify(I)V

    :cond_2
    :goto_0
    return-void
.end method
