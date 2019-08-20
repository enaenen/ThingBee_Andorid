.class public Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;
.super Landroid/support/v4/app/Fragment;
.source "TumblrFragment.java"

# interfaces
.implements Lcom/sherdle/universal/inherit/PermissionsFragment;
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;
    }
.end annotation


# instance fields
.field baseurl:Ljava/lang/String;

.field curpage:Ljava/lang/Integer;

.field private imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

.field isLoading:Ljava/lang/Boolean;

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field perpage:Ljava/lang/String;

.field total_posts:Ljava/lang/Integer;

.field tumblrItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    const-string v0, "25"

    .line 51
    iput-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->perpage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;)Lcom/sherdle/universal/providers/tumblr/ImageAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->mAct:Landroid/app/Activity;

    .line 91
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 206
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0051

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->ll:Landroid/widget/RelativeLayout;

    .line 62
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->perpage:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->total_posts:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 113
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->isLoading:Ljava/lang/Boolean;

    .line 114
    new-instance v1, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$1;)V

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->baseurl:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->refreshItems()V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->setHasOptionsMenu(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.tumblr.com/v2/blog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tumblr.com/posts?api_key="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f00fa

    .line 72
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&type=photo&limit="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->perpage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&offset="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->baseurl:Ljava/lang/String;

    .line 74
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 75
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->tumblrItems:Ljava/util/ArrayList;

    .line 76
    new-instance p2, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->tumblrItems:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1, p0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    .line 77
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->setModeAndNotify(I)V

    .line 78
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 82
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 83
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1, p1}, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;-><init>(IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method refreshItems()V
    .locals 4

    const/4 v0, 0x1

    .line 119
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->isLoading:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    .line 121
    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->tumblrItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    invoke-virtual {v2, v0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->setHasMore(Z)V

    .line 123
    iget-object v2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->setModeAndNotify(I)V

    .line 124
    new-instance v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$1;)V

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->baseurl:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment$InitialLoadGridView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public requiredPermissions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->tumblrItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->perpage:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->total_posts:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->setHasMore(Z)V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrFragment;->imageAdapter:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->setModeAndNotify(I)V

    return-void
.end method
