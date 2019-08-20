.class public Lcom/sherdle/universal/providers/facebook/FacebookFragment;
.super Landroid/support/v4/app/Fragment;
.source "FacebookFragment.java"

# interfaces
.implements Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;
    }
.end annotation


# static fields
.field private static API_URL_BEGIN:Ljava/lang/String; = "https://graph.facebook.com/v3.1/"

.field private static API_URL_END:Ljava/lang/String; = "&date_format=U&fields=comments.limit(50).summary(1),likes.limit(0).summary(1),from,picture,message,story,name,link,id,created_time,full_picture,source,type&limit=10"

.field private static API_URL_MIDDLE:Ljava/lang/String; = "/posts/?access_token="


# instance fields
.field isLoading:Ljava/lang/Boolean;

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private ll:Landroid/widget/RelativeLayout;

.field private mAct:Landroid/app/Activity;

.field nextpageurl:Ljava/lang/String;

.field private postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

.field private postsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 40
    iput-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->API_URL_BEGIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->API_URL_MIDDLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->API_URL_END:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/facebook/FacebookFragment;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/facebook/FacebookFragment;)Lcom/sherdle/universal/providers/facebook/FacebookAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->mAct:Landroid/app/Activity;

    .line 80
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->refreshItems()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    .line 214
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 215
    iget-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->mAct:Landroid/app/Activity;

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

    .line 58
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    const v0, 0x7f0b0051

    .line 59
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->ll:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->setHasOptionsMenu(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->username:Ljava/lang/String;

    .line 65
    iget-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->ll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postsList:Ljava/util/ArrayList;

    .line 67
    new-instance p2, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postsList:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1, p0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    .line 68
    iget-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->setModeAndNotify(I)V

    .line 69
    iget-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 72
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->ll:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onMoreRequested()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->nextpageurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookFragment;Z)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090146

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->refreshItems()V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->mAct:Landroid/app/Activity;

    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public parseJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "paging"

    .line 151
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "paging"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "next"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "paging"

    .line 152
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "next"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->nextpageurl:Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_0
    iput-object v1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->nextpageurl:Ljava/lang/String;

    :goto_0
    const-string v2, "data"

    .line 157
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 158
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_7

    .line 160
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 161
    new-instance v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;

    invoke-direct {v4}, Lcom/sherdle/universal/providers/facebook/FacebookItem;-><init>()V

    const-string v5, "id"

    .line 162
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->id:Ljava/lang/String;

    const-string v5, "type"

    .line 163
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->type:Ljava/lang/String;

    const-string v5, "from"

    .line 164
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->username:Ljava/lang/String;

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://graph.facebook.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "from"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/picture?type=large"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->profilePhotoUrl:Ljava/lang/String;

    .line 166
    new-instance v5, Ljava/util/Date;

    const-string v6, "created_time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->createdTime:Ljava/util/Date;

    const-string v5, "likes"

    .line 167
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "summary"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "total_count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->likesCount:I

    const-string v5, "link"

    .line 168
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "link"

    .line 169
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->link:Ljava/lang/String;

    goto :goto_2

    .line 171
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.facebook.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->link:Ljava/lang/String;

    .line 173
    :goto_2
    iget-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "source"

    .line 174
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->videoUrl:Ljava/lang/String;

    :cond_2
    const-string v5, "message"

    .line 177
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "message"

    .line 178
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->caption:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v5, "story"

    .line 179
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "story"

    .line 180
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->caption:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v5, "name"

    .line 181
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "name"

    .line 182
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->caption:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v5, ""

    .line 184
    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->caption:Ljava/lang/String;

    :goto_3
    const-string v5, "full_picture"

    .line 187
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "full_picture"

    .line 188
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->imageUrl:Ljava/lang/String;

    :cond_6
    const-string v5, "comments"

    .line 193
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "summary"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "total_count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->commentsCount:I

    const-string v5, "comments"

    .line 194
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v4, Lcom/sherdle/universal/providers/facebook/FacebookItem;->commentsArray:Lorg/json/JSONArray;

    .line 197
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "INFO"

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " skipped because of exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v3}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-object v0

    :catch_1
    move-exception p1

    .line 206
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public refreshItems()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->setHasMore(Z)V

    .line 221
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->setModeAndNotify(I)V

    .line 222
    new-instance v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;-><init>(Lcom/sherdle/universal/providers/facebook/FacebookFragment;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->nextpageurl:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->setHasMore(Z)V

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->postListAdapter:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->setModeAndNotify(I)V

    return-void
.end method
