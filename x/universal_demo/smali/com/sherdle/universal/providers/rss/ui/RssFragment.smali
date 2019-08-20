.class public Lcom/sherdle/universal/providers/rss/ui/RssFragment;
.super Landroid/support/v4/app/Fragment;
.source "RssFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;
    }
.end annotation


# instance fields
.field private listAdapter:Lcom/sherdle/universal/providers/rss/RssAdapter;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field private postsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/rss/RSSItem;",
            ">;"
        }
    .end annotation
.end field

.field private rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

.field private swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private url:Ljava/lang/String;

.field private viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->refreshItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RSSFeed;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sherdle/universal/providers/rss/ui/RssFragment;Lcom/sherdle/universal/providers/rss/RSSFeed;)Lcom/sherdle/universal/providers/rss/RSSFeed;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->postsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RssAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->listAdapter:Lcom/sherdle/universal/providers/rss/RssAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Landroid/app/Activity;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method private refreshItems()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->postsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->listAdapter:Lcom/sherdle/universal/providers/rss/RssAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setModeAndNotify(I)V

    .line 159
    new-instance v0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->mAct:Landroid/app/Activity;

    .line 94
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->url:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const v0, 0x7f0c0007

    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 151
    new-instance v0, Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/util/ViewModeUtils;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    .line 152
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    invoke-virtual {v0, p1, p2}, Lcom/sherdle/universal/util/ViewModeUtils;->inflateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 153
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0052

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->ll:Landroid/widget/RelativeLayout;

    .line 65
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 164
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->viewModeUtils:Lcom/sherdle/universal/util/ViewModeUtils;

    new-instance v1, Lcom/sherdle/universal/providers/rss/ui/RssFragment$2;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$2;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/sherdle/universal/util/ViewModeUtils;->handleSelection(Landroid/view/MenuItem;Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;)Z

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900c1

    if-eq v0, v1, :cond_0

    .line 202
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/rss/RSSFeed;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/RSSFeed;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->rssFeed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->getLink()Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->mAct:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0076

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 185
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 189
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": \n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \n"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \n"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00a1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v3, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 197
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 70
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->setHasOptionsMenu(Z)V

    .line 73
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->postsList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/sherdle/universal/providers/rss/RssAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->postsList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/providers/rss/RssAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->listAdapter:Lcom/sherdle/universal/providers/rss/RssAdapter;

    .line 76
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->listAdapter:Lcom/sherdle/universal/providers/rss/RssAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setModeAndNotify(I)V

    .line 77
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->listAdapter:Lcom/sherdle/universal/providers/rss/RssAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 78
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->ll:Landroid/widget/RelativeLayout;

    const p2, 0x7f090189

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 81
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method
