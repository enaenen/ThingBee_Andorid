.class public Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;
.super Ljava/lang/Object;
.source "WordpressGetTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;
    }
.end annotation


# instance fields
.field public adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

.field public baseurl:Ljava/lang/String;

.field public context:Landroid/app/Activity;

.field public curpage:Ljava/lang/Integer;

.field public ignoreId:Ljava/lang/Long;

.field public isLoading:Z

.field public listView:Landroid/support/v7/widget/RecyclerView;

.field private listener:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;

.field public pages:Ljava/lang/Integer;

.field public posts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;"
        }
    .end annotation
.end field

.field public provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

.field public simpleMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->curpage:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    .line 28
    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    const-wide/16 v1, 0x0

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->ignoreId:Ljava/lang/Long;

    .line 32
    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->context:Landroid/app/Activity;

    .line 45
    iput-object p3, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->baseurl:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->simpleMode:Ljava/lang/Boolean;

    const-string p1, "http"

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/api/providers/JetPackProvider;

    invoke-direct {p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/JetPackProvider;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    goto :goto_0

    :cond_0
    const-string p1, "wp-json/wp/v2/"

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/api/providers/RestApiProvider;

    invoke-direct {p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/RestApiProvider;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;

    invoke-direct {p1}, Lcom/sherdle/universal/providers/wordpress/api/providers/JsonApiProvider;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->provider:Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;

    :goto_0
    return-void
.end method


# virtual methods
.method public completedWithPosts()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->listener:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->listener:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;

    invoke-interface {v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;->completedWithPosts()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->listener:Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;

    return-void
.end method
