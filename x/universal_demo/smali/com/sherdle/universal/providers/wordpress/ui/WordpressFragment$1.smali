.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;
.super Ljava/lang/Object;
.source "WordpressFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 77
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 83
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object p2

    sget-object p3, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    invoke-virtual {p2, p3}, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {p3}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Landroid/app/Activity;

    move-result-object p3

    const-class p4, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "postitem"

    .line 86
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "apiurl"

    .line 87
    iget-object p3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {p3}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 p3, 0x2

    if-le p1, p3, :cond_1

    const-string p1, "disqus"

    .line 90
    iget-object p4, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {p4}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)[Ljava/lang/String;

    move-result-object p4

    aget-object p3, p4, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
