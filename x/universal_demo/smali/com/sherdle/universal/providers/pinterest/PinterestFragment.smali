.class public Lcom/sherdle/universal/providers/pinterest/PinterestFragment;
.super Landroid/support/v4/app/Fragment;
.source "PinterestFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;
    }
.end annotation


# static fields
.field private static API_URL:Ljava/lang/String; = "https://api.pinterest.com/v1/boards/"

.field private static API_URL_END:Ljava/lang/String; = "/pins/?fields=id,original_link,note,image,media,attribution,created_at,creator(image,first_name),counts&limit=100&access_token="


# instance fields
.field id:Ljava/lang/String;

.field isLoading:Ljava/lang/Boolean;

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field nextpageurl:Ljava/lang/String;

.field private pinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;"
        }
    .end annotation
.end field

.field private pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinList:Ljava/util/ArrayList;

    .line 40
    iput-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 41
    iput-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->API_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->API_URL_END:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;)Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->mAct:Landroid/app/Activity;

    .line 82
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 188
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    iget-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->mAct:Landroid/app/Activity;

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

    .line 60
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    const v0, 0x7f0b0051

    .line 61
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->ll:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->setHasOptionsMenu(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->id:Ljava/lang/String;

    .line 67
    iget-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinList:Ljava/util/ArrayList;

    .line 69
    new-instance p2, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinList:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1, p0}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    .line 70
    iget-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->setModeAndNotify(I)V

    .line 71
    iget-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 72
    iget-object p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 74
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->nextpageurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;Z)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->refreshItems()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public parseJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "page"

    .line 148
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "page"

    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "page"

    .line 150
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->nextpageurl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->nextpageurl:Ljava/lang/String;

    :goto_0
    const-string v1, "data"

    .line 154
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 155
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 156
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 157
    new-instance v3, Lcom/sherdle/universal/providers/pinterest/Pin;

    invoke-direct {v3}, Lcom/sherdle/universal/providers/pinterest/Pin;-><init>()V

    const-string v4, "id"

    .line 158
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->id:Ljava/lang/String;

    const-string v4, "media"

    .line 159
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->type:Ljava/lang/String;

    const-string v4, "creator"

    .line 160
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "first_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->creatorName:Ljava/lang/String;

    const-string v4, "creator"

    .line 161
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "60x60"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->creatorImageUrl:Ljava/lang/String;

    const-string v4, "note"

    .line 162
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->caption:Ljava/lang/String;

    const-string v4, "image"

    .line 164
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "original"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->imageUrl:Ljava/lang/String;

    .line 166
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v5, "created_at"

    .line 167
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->createdTime:Ljava/util/Date;

    const-string v4, "counts"

    .line 168
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "saves"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->repinCount:I

    const-string v4, "counts"

    .line 169
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "comments"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->commentsCount:I

    const-string v4, "original_link"

    .line 171
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->link:Ljava/lang/String;

    .line 173
    iget-object v4, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "attribution"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "attribution"

    .line 174
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/sherdle/universal/providers/pinterest/Pin;->videoUrl:Ljava/lang/String;

    .line 178
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 181
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2
    return-object v0
.end method

.method public refreshItems()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->setHasMore(Z)V

    .line 195
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->setModeAndNotify(I)V

    .line 196
    new-instance v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;-><init>(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->nextpageurl:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->setHasMore(Z)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->pinListAdapter:Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->setModeAndNotify(I)V

    return-void
.end method
