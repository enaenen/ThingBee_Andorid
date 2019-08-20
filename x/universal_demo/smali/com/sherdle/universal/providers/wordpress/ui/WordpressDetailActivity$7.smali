.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadRelatedPosts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

.field final synthetic val$mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->val$mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

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

    .line 307
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->val$mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 308
    check-cast p1, Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 310
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    const-class p4, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "postitem"

    .line 311
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "apiurl"

    .line 312
    iget-object p3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-virtual {p3}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string p4, "apiurl"

    invoke-virtual {p3, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "disqus"

    .line 314
    iget-object p3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p3}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->finish()V

    return-void
.end method
