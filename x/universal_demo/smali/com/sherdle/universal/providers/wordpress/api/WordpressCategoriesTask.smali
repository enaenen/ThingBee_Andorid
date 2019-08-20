.class public Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;
.super Landroid/os/AsyncTask;
.source "WordpressCategoriesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList<",
        "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final NUMBER_OF_CATEGORIES:I = 0xf


# instance fields
.field private callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;

.field private info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    .line 22
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    iget-object p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->info:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;->getCategories(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;

    invoke-interface {p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;->categoriesFailed()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;->callback:Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;

    invoke-interface {v0, p1}, Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;->categoriesLoaded(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
