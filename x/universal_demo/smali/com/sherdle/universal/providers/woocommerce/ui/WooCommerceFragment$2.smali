.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 211
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    invoke-static {v0}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$100(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 217
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$202(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)V

    .line 219
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->updateHeaders()V

    const/4 p1, 0x1

    return p1
.end method
