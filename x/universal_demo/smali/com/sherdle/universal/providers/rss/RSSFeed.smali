.class public Lcom/sherdle/universal/providers/rss/RSSFeed;
.super Ljava/lang/Object;
.source "RSSFeed.java"


# instance fields
.field private description:Ljava/lang/String;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/rss/RSSItem;",
            ">;"
        }
    .end annotation
.end field

.field private link:Ljava/lang/String;

.field private pubdate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->title:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->description:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->link:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->pubdate:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->itemList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addItem(Lcom/sherdle/universal/providers/rss/RSSItem;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/sherdle/universal/providers/rss/RSSItem;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/rss/RSSItem;

    return-object p1
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/rss/RSSItem;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->itemList:Ljava/util/List;

    return-object v0
.end method

.method getPubdate()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->pubdate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->title:Ljava/lang/String;

    return-object v0
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->description:Ljava/lang/String;

    return-void
.end method

.method setLink(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->link:Ljava/lang/String;

    return-void
.end method

.method setPubdate(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->pubdate:Ljava/lang/String;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSFeed;->title:Ljava/lang/String;

    return-void
.end method
