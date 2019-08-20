.class public Lcom/sherdle/universal/providers/instagram/InstagramFragment;
.super Landroid/support/v4/app/Fragment;
.source "InstagramFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;
    }
.end annotation


# static fields
.field private static API_URL:Ljava/lang/String; = "https://graph.facebook.com/v3.1/"

.field private static API_URL_END:Ljava/lang/String; = "/media?fields=caption,id,ig_id,comments_count,timestamp,permalink,owner{profile_picture_url},media_url,media_type,thumbnail_url,like_count,comments{text,username},username,children&access_token="

.field private static final INSTAGRAM_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field isLoading:Ljava/lang/Boolean;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field private nextpageurl:Ljava/lang/String;

.field private photosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/instagram/InstagramPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

.field private photosListView:Landroid/support/v7/widget/RecyclerView;

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->INSTAGRAM_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListView:Landroid/support/v7/widget/RecyclerView;

    .line 43
    iput-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/instagram/InstagramFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->nextpageurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/instagram/InstagramFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->nextpageurl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->API_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->API_URL_END:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/instagram/InstagramFragment;)Landroid/app/Activity;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/instagram/InstagramFragment;)Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->mAct:Landroid/app/Activity;

    .line 83
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 193
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 194
    iget-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->mAct:Landroid/app/Activity;

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

    .line 61
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    const v0, 0x7f0b0051

    .line 62
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->ll:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->setHasOptionsMenu(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->username:Ljava/lang/String;

    .line 68
    iget-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosList:Ljava/util/ArrayList;

    .line 70
    new-instance p2, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosList:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1, p0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    .line 71
    iget-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->setModeAndNotify(I)V

    .line 72
    iget-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 73
    iget-object p2, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 75
    iget-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->nextpageurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramFragment;Z)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->refreshItems()V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public parseJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/instagram/InstagramPhoto;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "paging"

    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "paging"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "paging"

    .line 150
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "next"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->nextpageurl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->nextpageurl:Ljava/lang/String;

    :goto_0
    const-string v1, "data"

    .line 155
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 156
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 157
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 158
    new-instance v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;

    invoke-direct {v3}, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;-><init>()V

    const-string v4, "ig_id"

    .line 159
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->id:Ljava/lang/String;

    const-string v4, "media_type"

    .line 160
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->type:Ljava/lang/String;

    const-string v4, "username"

    .line 161
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->username:Ljava/lang/String;

    const-string v4, "owner"

    .line 162
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "profile_picture_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->profilePhotoUrl:Ljava/lang/String;

    const-string v4, "caption"

    .line 163
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "caption"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "caption"

    .line 164
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->caption:Ljava/lang/String;

    .line 166
    :cond_1
    sget-object v4, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->INSTAGRAM_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v5, "timestamp"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->createdTime:Ljava/util/Date;

    const-string v4, "like_count"

    .line 167
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->likesCount:I

    const-string v4, "permalink"

    .line 168
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->link:Ljava/lang/String;

    const-string v4, "comments"

    .line 169
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "comments"

    .line 170
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->commentsJson:Ljava/lang/String;

    .line 172
    :cond_2
    iget-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "media_url"

    .line 173
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->videoUrl:Ljava/lang/String;

    const-string v4, "thumbnail_url"

    .line 174
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->imageUrl:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v4, "media_url"

    .line 176
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->imageUrl:Ljava/lang/String;

    :goto_2
    const-string v4, "comments_count"

    .line 179
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/sherdle/universal/providers/instagram/InstagramPhoto;->commentsCount:I

    .line 182
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 185
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4
    return-object v0
.end method

.method public refreshItems()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->setHasMore(Z)V

    .line 200
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->setModeAndNotify(I)V

    .line 201
    new-instance v0, Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;-><init>(Lcom/sherdle/universal/providers/instagram/InstagramFragment;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/instagram/InstagramFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/instagram/InstagramPhoto;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->nextpageurl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->setHasMore(Z)V

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramFragment;->photosListAdapter:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;->setModeAndNotify(I)V

    return-void
.end method
