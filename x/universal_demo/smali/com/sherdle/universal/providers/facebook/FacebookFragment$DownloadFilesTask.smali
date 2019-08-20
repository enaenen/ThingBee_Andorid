.class Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;
.super Landroid/os/AsyncTask;
.source "FacebookFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/facebook/FacebookFragment;
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
        "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field initialload:Z

.field final synthetic this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/facebook/FacebookFragment;Z)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 106
    iput-boolean p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->initialload:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 101
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    iget-object p1, p1, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->nextpageurl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->parseJson(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/facebook/FacebookItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "YOURFACEBOOKTOKENHERE"

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string v0, "Debug info: You have not entered a (valid) ACCESS token."

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->access$300(Lcom/sherdle/universal/providers/facebook/FacebookFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->access$400(Lcom/sherdle/universal/providers/facebook/FacebookFragment;)Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->setModeAndNotify(I)V

    .line 137
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->isLoading:Ljava/lang/Boolean;

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    iget-object v0, v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->isLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->cancel(Z)Z

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->isLoading:Ljava/lang/Boolean;

    .line 116
    :goto_0
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->initialload:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    iget-object v2, v2, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/facebook/FacebookFragment$DownloadFilesTask;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookFragment;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sherdle/universal/providers/facebook/FacebookFragment;->nextpageurl:Ljava/lang/String;

    :cond_1
    return-void
.end method
