.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadHeaderImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 225
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 228
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    .line 232
    invoke-virtual {v4}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 240
    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->withImage(Ljava/lang/String;)Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    :cond_3
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
