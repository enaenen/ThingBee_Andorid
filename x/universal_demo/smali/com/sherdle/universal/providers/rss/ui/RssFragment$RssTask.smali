.class Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;
.super Landroid/os/AsyncTask;
.source "RssFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/rss/ui/RssFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RssTask"
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
.field final synthetic this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;Lcom/sherdle/universal/providers/rss/ui/RssFragment$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 103
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$100(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/sherdle/universal/providers/rss/RSSHandler;

    invoke-direct {v1}, Lcom/sherdle/universal/providers/rss/RSSHandler;-><init>()V

    .line 108
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 109
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 110
    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 112
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/RSSHandler;->getFeed()Lcom/sherdle/universal/providers/rss/RSSFeed;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$202(Lcom/sherdle/universal/providers/rss/ui/RssFragment;Lcom/sherdle/universal/providers/rss/RSSFeed;)Lcom/sherdle/universal/providers/rss/RSSFeed;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 115
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$200(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RSSFeed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$200(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RSSFeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSFeed;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$300(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$200(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RSSFeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$400(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RssAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setHasMore(Z)V

    .line 129
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$400(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RssAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setModeAndNotify(I)V

    .line 130
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$500(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 134
    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$100(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug info: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$100(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is most likely not a valid RSS url. Make sure the url entered in your configuration starts with \'http\' and verify if it\'s valid XML using https://validator.w3.org/feed/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$600(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$400(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Lcom/sherdle/universal/providers/rss/RssAdapter;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/rss/RssAdapter;->setModeAndNotify(I)V

    .line 139
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssFragment$RssTask;->this$0:Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/rss/ui/RssFragment;->access$500(Lcom/sherdle/universal/providers/rss/ui/RssFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 143
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
