.class public Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;
.super Ljava/lang/Object;
.source "WordpressCategoriesLoader.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;


# instance fields
.field private categoryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    return-void
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->categoryItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    return-object p0
.end method


# virtual methods
.method public completedWithPosts()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->categoryItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->createSlider(Ljava/util/ArrayList;)V

    return-void
.end method

.method public createSlider(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b0085

    .line 54
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/providers/wordpress/CategoryItem;

    const v4, 0x7f0b0086

    .line 56
    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f090043

    .line 58
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090044

    .line 59
    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    invoke-virtual {v3}, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v3}, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->getPostCount()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v6, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;

    invoke-direct {v6, p0, v3}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$2;-><init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;Lcom/sherdle/universal/providers/wordpress/CategoryItem;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090178

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setSlider(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 75
    invoke-virtual {v2, p1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 76
    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

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

.method public load()V
    .locals 3

    .line 33
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    new-instance v2, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader$1;-><init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;)V

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;-><init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;)V

    const/4 v1, 0x0

    .line 49
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
