.class Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "PinterestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/pinterest/PinterestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList<",
        "Lcom/sherdle/universal/providers/pinterest/Pin;",
        ">;>;"
    }
.end annotation


# instance fields
.field initialload:Z

.field final synthetic this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;Z)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->initialload:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    iget-object p1, p1, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->nextpageurl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->parseJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 105
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/pinterest/Pin;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->access$200(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    .line 131
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->access$300(Lcom/sherdle/universal/providers/pinterest/PinterestFragment;)Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/pinterest/PinterestAdapter;->setModeAndNotify(I)V

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    iget-object v0, v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->cancel(Z)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->isLoading:Ljava/lang/Boolean;

    .line 120
    :goto_0
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->initialload:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    iget-object v2, v2, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/pinterest/PinterestFragment;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/pinterest/PinterestFragment;->nextpageurl:Ljava/lang/String;

    :cond_1
    return-void
.end method
