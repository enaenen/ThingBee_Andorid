.class public Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;
.super Landroid/support/v4/app/Fragment;
.source "WordpressFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# instance fields
.field private arguments:[Ljava/lang/String;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field private mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

.field private postList:Landroid/support/v7/widget/RecyclerView;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private urlSession:Ljava/lang/String;

.field viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->postList:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)[Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->arguments:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->urlSession:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getPosts()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->arguments:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->arguments:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->arguments:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->getCategoryPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->urlSession:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-static {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->getRecentPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->urlSession:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;-><init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesLoader;->load()V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mAct:Landroid/app/Activity;

    .line 124
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getPosts()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 141
    new-instance v0, Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v0, p1, p2}, Lcom/sherdle/universal/util/ViewModeUtils;->inflateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0c0004

    .line 144
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    new-instance p2, Landroid/support/v7/widget/SearchView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mAct:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$3;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 173
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$4;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$4;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const v0, 0x7f0900f8

    .line 189
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 192
    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 70
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    const v0, 0x7f0b0052

    .line 71
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->ll:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->setHasOptionsMenu(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->arguments:[Ljava/lang/String;

    .line 77
    new-instance v4, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;

    invoke-direct {v4, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$1;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)V

    .line 96
    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->postList:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f090189

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 98
    new-instance p2, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->postList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->arguments:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    .line 99
    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    new-instance v6, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v2, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->simpleMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    iput-object v6, p2, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    .line 100
    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->postList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object p2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->postList:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->ll:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$2;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 116
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-boolean v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->pages:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->mInfo:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->urlSession:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->loadMorePosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    new-instance v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$5;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/sherdle/universal/util/ViewModeUtils;->handleSelection(Landroid/view/MenuItem;Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;)Z

    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 209
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
