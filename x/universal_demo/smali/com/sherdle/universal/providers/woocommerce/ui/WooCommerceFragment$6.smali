.class Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;
.super Ljava/lang/Object;
.source "WooCommerceFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->loadCategorySlider(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
        "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;I)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    iput p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 0

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
            ">;)V"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$400(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b0068

    .line 373
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 374
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;

    .line 376
    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getImage()Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getImage()Lcom/google/gson/JsonElement;

    move-result-object v5

    instance-of v5, v5, Lcom/google/gson/JsonObject;

    if-eqz v5, :cond_0

    .line 377
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getImage()Lcom/google/gson/JsonElement;

    move-result-object v6

    const-class v7, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;

    const v6, 0x7f0b0061

    .line 378
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 379
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v7

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/woocommerce/model/products/Image;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    const v7, 0x7f0900ba

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_0
    const v5, 0x7f0b0062

    .line 381
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    const v5, 0x7f09002c

    .line 382
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$500(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const v5, 0x7f0901a2

    .line 385
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 386
    invoke-virtual {v4}, Lcom/sherdle/universal/providers/woocommerce/model/products/Category;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    new-instance v5, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;

    invoke-direct {v5, p0, v4}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;Lcom/sherdle/universal/providers/woocommerce/model/products/Category;)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090178

    .line 393
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->this$0:Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;->access$600(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;)Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;

    move-result-object p1

    iget v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment$6;->val$index:I

    invoke-virtual {p1, v2, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/ProductsAdapter;->addHeaderToIndex(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 399
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 400
    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
