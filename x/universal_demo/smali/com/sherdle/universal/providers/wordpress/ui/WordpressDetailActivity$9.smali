.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

.field final synthetic val$item:Lcom/sherdle/universal/providers/wordpress/PostItem;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;->val$item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;->val$item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;->val$item:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$400(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
