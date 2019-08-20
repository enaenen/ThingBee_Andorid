.class Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;
.super Ljava/lang/Object;
.source "CartWithCookies.java"

# interfaces
.implements Lokhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;-><init>(Landroid/content/Context;Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$AllProductsAddedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/Cookie;

    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 50
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Cookie;

    .line 53
    invoke-virtual {p2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies$1;->this$0:Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;->access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartWithCookies;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
