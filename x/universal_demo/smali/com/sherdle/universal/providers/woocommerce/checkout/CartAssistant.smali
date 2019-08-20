.class public Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;
.super Ljava/lang/Object;
.source "CartAssistant.java"


# instance fields
.field private mCart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

.field private mCartButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

.field private variations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->getInstance(Landroid/content/Context;)Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mCart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    .line 42
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mCartButton:Landroid/view/View;

    .line 44
    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->variations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->variations:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->selectVariation()V

    return-void
.end method

.method public static getPrice(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)F
    .locals 2

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPrice()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getOnSale()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getSalePrice()F

    move-result p0

    return p0

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPrice()F

    move-result p0

    return p0

    .line 129
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getPrice()F

    move-result p0

    return p0
.end method

.method public static getVariationDescription(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Ljava/lang/String;
    .locals 4

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getAttributes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;->getOption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, ", "

    .line 124
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private retrieveVariations()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->variations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 70
    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;

    invoke-direct {v1, p0, v0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;Landroid/app/ProgressDialog;)V

    .line 90
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 91
    invoke-virtual {v2}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getVariationsForProduct(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;I)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->selectVariation()V

    :goto_0
    return-void
.end method

.method private selectVariation()V
    .locals 5

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->variations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    .line 101
    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->getVariationDescription(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Ljava/lang/String;

    move-result-object v3

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-static {v3, v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->getPrice(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/sherdle/universal/providers/woocommerce/checkout/PriceFormat;->formatPrice(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 107
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 108
    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$3;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f0f0100

    .line 114
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getExternalUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v1, v3}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "variable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->retrieveVariations()V

    goto :goto_1

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mCart:Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;

    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mProduct:Lcom/sherdle/universal/providers/woocommerce/model/products/Product;

    invoke-virtual {v0, v2, p1}, Lcom/sherdle/universal/providers/woocommerce/checkout/Cart;->addProductToCart(Lcom/sherdle/universal/providers/woocommerce/model/products/Product;Lcom/sherdle/universal/providers/woocommerce/model/products/Product;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0f0032

    goto :goto_0

    :cond_2
    const p1, 0x7f0f00aa

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mCartButton:Landroid/view/View;

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const v0, 0x7f0f010a

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;)V

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 63
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/checkout/CartAssistant;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method
