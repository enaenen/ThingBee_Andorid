.class Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;
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

    .line 140
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 143
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    new-instance v0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$102(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 144
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$100(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 146
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$100(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->checkEvent(Ljava/lang/String;Ljava/io/Serializable;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$100(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-static {v3}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->access$200(Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;)Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->addFavorite(Ljava/lang/String;Ljava/io/Serializable;I)J

    .line 149
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    .line 150
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0071

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    .line 157
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
