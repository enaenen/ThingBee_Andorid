.class public Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;
.super Landroid/support/v4/app/Fragment;
.source "OrdersFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback<",
        "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
        ">;",
        "Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;"
    }
.end annotation


# instance fields
.field private awaitingLogin:Z

.field private mAct:Landroid/app/Activity;

.field private ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

.field private ordersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->awaitingLogin:Z

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->page:I

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->awaitingLogin:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->refreshItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method private loadHeader()V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006c

    const/4 v2, 0x0

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090113

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901c0

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f007e

    .line 118
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-static {v5}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setHeader(Landroid/view/View;)V

    return-void
.end method

.method private refreshItems()V
    .locals 2

    const/4 v0, 0x1

    .line 174
    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->page:I

    .line 175
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 176
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setHasMore(Z)V

    .line 177
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    .line 178
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->requestItems()V

    return-void
.end method

.method private requestItems()V
    .locals 3

    .line 188
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;-><init>(Landroid/content/Context;)V

    .line 189
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getId(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->page:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getOrders(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;II)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    .line 169
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c000e

    .line 194
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0900f8

    .line 195
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0052

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 1

    .line 183
    iget v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->page:I

    .line 184
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->requestItems()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900f5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/sherdle/universal/providers/woocommerce/ui/CartFragment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 136
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->awaitingLogin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->awaitingLogin:Z

    .line 138
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 68
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->setHasOptionsMenu(Z)V

    const p2, 0x7f0900e2

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f090189

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersList:Ljava/util/List;

    .line 73
    new-instance p1, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersList:Ljava/util/List;

    invoke-direct {p1, p2, v0, p0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    .line 74
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    .line 75
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 77
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    .line 79
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 80
    iget-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 83
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->credentialsAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->refreshItems()V

    .line 85
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->loadHeader()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const p2, 0x7f0f009d

    .line 88
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0f009e

    .line 89
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setEmptyViewText(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0049

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V

    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setEmptyViewButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const v0, 0x7f0f007e

    .line 150
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->mAct:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sherdle/universal/providers/woocommerce/model/CredentialStorage;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f0099

    .line 151
    invoke-virtual {p0, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1, v0, v2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setEmptyViewText(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$4;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment$4;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;)V

    invoke-virtual {p1, v0, v2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setEmptyViewButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {p1, v1}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setHasMore(Z)V

    .line 161
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->ordersAdapter:Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;

    invoke-virtual {p1, v2}, Lcom/sherdle/universal/providers/woocommerce/adapter/OrdersAdapter;->setModeAndNotify(I)V

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/OrdersFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
