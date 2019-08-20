.class public Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;
.super Landroid/support/v4/app/Fragment;
.source "FlickrFragment.java"

# interfaces
.implements Lcom/sherdle/universal/inherit/PermissionsFragment;
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;
    }
.end annotation


# instance fields
.field baseurl:Ljava/lang/String;

.field curpage:Ljava/lang/Integer;

.field private imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

.field isLoading:Ljava/lang/Boolean;

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field method:Ljava/lang/String;

.field total_pages:Ljava/lang/Integer;

.field tumblrItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
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
    iput-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;)Lcom/sherdle/universal/providers/flickr/ImageAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->mAct:Landroid/app/Activity;

    .line 101
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 228
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->mAct:Landroid/app/Activity;

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

    iput-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->ll:Landroid/widget/RelativeLayout;

    .line 62
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->total_pages:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 123
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->isLoading:Ljava/lang/Boolean;

    .line 124
    new-instance v1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;-><init>(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$1;)V

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->baseurl:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 234
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->refreshItems()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 243
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->setHasOptionsMenu(Z)V

    const p2, 0x7f0f0079

    .line 70
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 72
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->method:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->method:Ljava/lang/String;

    const-string v2, "gallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "photosets"

    goto :goto_0

    :cond_0
    const-string v1, "galleries"

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->method:Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "photoset_id"

    goto :goto_1

    :cond_1
    const-string v2, "gallery_id"

    .line 77
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.flickr.com/services/rest/?method=flickr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".getPhotos&api_key="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&format=json&extras=path_alias,url_o,url_c,url_b,url_z&page="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->baseurl:Ljava/lang/String;

    .line 84
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->tumblrItems:Ljava/util/ArrayList;

    .line 86
    new-instance p2, Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->tumblrItems:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1, p0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    .line 87
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->setModeAndNotify(I)V

    .line 88
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 91
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 93
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/sherdle/universal/util/layout/StaggeredGridSpacingItemDecoration;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->getResources()Landroid/content/res/Resources;

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

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->isLoading:Ljava/lang/Boolean;

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    .line 131
    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->tumblrItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->setHasMore(Z)V

    .line 133
    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->setModeAndNotify(I)V

    .line 134
    new-instance v1, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;-><init>(Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$1;)V

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->baseurl:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment$InitialLoadGridView;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public requiredPermissions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 116
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
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->tumblrItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->total_pages:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->setHasMore(Z)V

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/flickr/ui/FlickrFragment;->imageAdapter:Lcom/sherdle/universal/providers/flickr/ImageAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/flickr/ImageAdapter;->setModeAndNotify(I)V

    return-void
.end method
