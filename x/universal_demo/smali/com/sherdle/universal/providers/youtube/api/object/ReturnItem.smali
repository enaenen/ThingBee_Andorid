.class public Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;
.super Ljava/lang/Object;
.source "ReturnItem.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
            ">;"
        }
    .end annotation
.end field

.field private pagetoken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;->list:Ljava/util/ArrayList;

    .line 15
    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;->pagetoken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/youtube/api/object/Video;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/api/object/ReturnItem;->pagetoken:Ljava/lang/String;

    return-object v0
.end method
