.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadPostBody(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

.field final synthetic val$result:Lcom/sherdle/universal/providers/wordpress/PostItem;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->val$result:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 399
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    const-class v1, Lcom/sherdle/universal/comments/CommentsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->DISQUS:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JETPACK:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v0, v1, :cond_1

    .line 407
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$300(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v2}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sherdle/universal/providers/wordpress/api/providers/JetPackProvider;->getPostCommentsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_JETPACK:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v0, v1, :cond_2

    .line 410
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$300(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v2}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sherdle/universal/providers/wordpress/api/providers/RestApiProvider;->getPostCommentsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_REST:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v0, v1, :cond_3

    .line 413
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->val$result:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentsArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_JSON:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
