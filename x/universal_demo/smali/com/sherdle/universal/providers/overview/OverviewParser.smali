.class public Lcom/sherdle/universal/providers/overview/OverviewParser;
.super Landroid/os/AsyncTask;
.source "OverviewParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private callback:Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;

.field private context:Landroid/app/Activity;

.field private facedException:Z

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation
.end field

.field private sourceLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->sourceLocation:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->context:Landroid/app/Activity;

    .line 43
    iput-object p3, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->callback:Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/overview/OverviewParser;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->sourceLocation:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->sourceLocation:Ljava/lang/String;

    invoke-static {v1}, Lcom/sherdle/universal/util/Helper;->getDataFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->sourceLocation:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Helper;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "INFO"

    const-string v3, "JSON was invalid"

    .line 68
    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->facedException:Z

    .line 70
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    move-object v2, p1

    :goto_0
    if-eqz v2, :cond_2

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->result:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 81
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 82
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->result:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->context:Landroid/app/Activity;

    invoke-static {v5, v3}, Lcom/sherdle/universal/ConfigParser;->navItemFromJSON(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/sherdle/universal/drawer/NavItem;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "INFO"

    const-string v2, "JSON was invalid"

    .line 88
    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->facedException:Z

    goto :goto_2

    :cond_2
    const-string v1, "INFO"

    const-string v2, "JSON Could not be retrieved"

    .line 93
    invoke-static {v1, v2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->facedException:Z

    :cond_3
    :goto_2
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/overview/OverviewParser;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 102
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->callback:Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->callback:Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->result:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lcom/sherdle/universal/providers/overview/OverviewParser;->facedException:Z

    invoke-interface {p1, v0, v1}, Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;->categoriesLoaded(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
