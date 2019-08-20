.class public Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;
.super Landroid/os/AsyncTask;
.source "WordpressPostsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList<",
        "Lcom/sherdle/universal/providers/wordpress/PostItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final PER_PAGE:I = 0xf

.field public static final PER_PAGE_RELATED:I = 0x4


# instance fields
.field private callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;

.field private info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->url:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    .line 26
    iput-object p3, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v0, v0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->url:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->url:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->parsePostsFromUrl(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;

    invoke-interface {v0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;->postsLoaded(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;->callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;->postsFailed()V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
