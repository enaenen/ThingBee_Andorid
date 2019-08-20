.class public Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;
.super Landroid/support/v4/app/Fragment;
.source "TweetsFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;
    }
.end annotation


# instance fields
.field isLoading:Ljava/lang/Boolean;

.field latesttweetid:Ljava/lang/String;

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field perpage:Ljava/lang/String;

.field searchValue:Ljava/lang/String;

.field private tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

.field private tweets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/twitter/Tweet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "25"

    .line 57
    iput-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->perpage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;)Landroid/app/Activity;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;)Lcom/sherdle/universal/providers/twitter/TweetAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->mAct:Landroid/app/Activity;

    .line 83
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 334
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 336
    iget-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 p3, 0x0

    const v0, 0x7f0b0051

    .line 64
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->ll:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->setHasOptionsMenu(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->searchValue:Ljava/lang/String;

    .line 68
    iget-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 70
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweets:Ljava/util/ArrayList;

    .line 71
    new-instance p2, Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweets:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1, p0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    .line 72
    iget-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->setModeAndNotify(I)V

    .line 73
    iget-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object p2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;-><init>(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->searchValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->refreshItems()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public refreshItems()V
    .locals 4

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->isLoading:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->latesttweetid:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    invoke-virtual {v2, v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->setHasMore(Z)V

    .line 106
    iget-object v2, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->setModeAndNotify(I)V

    .line 107
    new-instance v2, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;

    invoke-direct {v2, p0, v1}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;-><init>(Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$1;)V

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->searchValue:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment$SearchTweetsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/twitter/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->setHasMore(Z)V

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/twitter/ui/TweetsFragment;->tweetAdapter:Lcom/sherdle/universal/providers/twitter/TweetAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/twitter/TweetAdapter;->setModeAndNotify(I)V

    return-void
.end method
