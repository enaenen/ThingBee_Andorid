.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$2;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->configureFAB()V
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

    .line 209
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$2;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
