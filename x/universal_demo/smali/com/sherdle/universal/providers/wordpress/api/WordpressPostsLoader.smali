.class public Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;
.super Ljava/lang/Object;
.source "WordpressPostsLoader.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;


# instance fields
.field private info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

.field private initialload:Z

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->url:Ljava/lang/String;

    .line 73
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->initialload:Z

    .line 74
    iput-object p3, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    return-void
.end method

.method private complete()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    return-void
.end method

.method public static getCategoryPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    invoke-interface {v0, p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getCategoryPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;-><init>(Ljava/lang/String;ZLcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    invoke-direct {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->load()V

    return-object p1
.end method

.method public static getRecentPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    invoke-interface {v0, p0}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getRecentPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;-><init>(Ljava/lang/String;ZLcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    invoke-direct {v1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->load()V

    return-object v0
.end method

.method public static getSearchPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    invoke-interface {v0, p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getSearchPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;-><init>(Ljava/lang/String;ZLcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    invoke-direct {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->load()V

    return-object p1
.end method

.method public static getTagPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    invoke-interface {v0, p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getTagPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;-><init>(Ljava/lang/String;ZLcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    invoke-direct {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->load()V

    return-object p1
.end method

.method private load()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-boolean v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    .line 84
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->initialload:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setModeAndNotify(I)V

    .line 87
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setHasMore(Z)V

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    .line 95
    :cond_1
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-direct {v0, v1, v3, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;-><init>(Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static loadMorePosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;-><init>(Ljava/lang/String;ZLcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    invoke-direct {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->load()V

    return-void
.end method

.method private showErrorMessage()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Your parameters should not contain the character \". Note that the quotes in the documentation only represent the parameters to enter in the configurator tool."

    goto/16 :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    instance-of v0, v0, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Your base url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "should not not end with / (slash)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    const-string v1, "/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    instance-of v0, v0, Lcom/sherdle/universal/providers/wordpress/api/providers/RestApiProvider;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    const-string v2, "/v2/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid base url for the Wordpress REST API. A base url usually ends with wp-json/wp/v2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The result of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' does not appear to return valid JSON or at least not in the expected format."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setModeAndNotify(I)V

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private updateList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->pages:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->simpleMode:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setHasMore(Z)V

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setModeAndNotify(I)V

    return-void
.end method


# virtual methods
.method public postsFailed()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->showErrorMessage()V

    .line 152
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->complete()V

    return-void
.end method

.method public postsLoaded(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->updateList(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->simpleMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->context:Landroid/app/Activity;

    .line 139
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f009a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {p1, v1}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;->setModeAndNotify(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->completedWithPosts()V

    .line 146
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->complete()V

    return-void
.end method
