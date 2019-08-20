.class Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$3;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getImages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;

    .line 170
    new-instance v2, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->getSrc()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$3;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {v0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->startActivity(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method
