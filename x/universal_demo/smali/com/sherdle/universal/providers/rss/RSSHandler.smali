.class public Lcom/sherdle/universal/providers/rss/RSSHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RSSHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/rss/RSSHandler$State;
    }
.end annotation


# instance fields
.field private currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field private feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

.field private item:Lcom/sherdle/universal/providers/rss/RSSItem;

.field private itemFound:Z

.field private tagContent:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    sget-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->unknown:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->itemFound:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "item"

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "entry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->addItem(Lcom/sherdle/universal/providers/rss/RSSItem;)V

    .line 89
    :cond_1
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->itemFound:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 91
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$1;->$SwitchMap$com$sherdle$universal$providers$rss$RSSHandler$State:[I

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 111
    :pswitch_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSItem;->setPubdate(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :pswitch_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSItem;->setLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :pswitch_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSItem;->setDescription(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getThumburl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getThumburl()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    const-string p2, "img"

    .line 102
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string p2, "src"

    .line 103
    invoke-virtual {p1, p2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setThumburl(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_3
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSItem;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$1;->$SwitchMap$com$sherdle$universal$providers$rss$RSSHandler$State:[I

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->setPubdate(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_5
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_6
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_7
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/rss/RSSFeed;->setTitle(Ljava/lang/String;)V

    :cond_4
    :goto_0
    :pswitch_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getFeed()Lcom/sherdle/universal/providers/rss/RSSFeed;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSFeed;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/rss/RSSFeed;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->feed:Lcom/sherdle/universal/providers/rss/RSSFeed;

    .line 32
    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 39
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->unknown:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->tagContent:Ljava/lang/StringBuilder;

    const-string p1, "item"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    const-string p1, "entry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p1, "title"

    .line 45
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->title:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    goto/16 :goto_5

    :cond_1
    const-string p1, "description"

    .line 47
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "content:encoded"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "content"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p1, "link"

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "origLink"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p1, "pubdate"

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "published"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_1

    :cond_4
    const-string p1, "media:thumbnail"

    .line 53
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 54
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->media:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string p1, "url"

    .line 55
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setThumburl(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string p1, "media:content"

    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 58
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->media:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string p1, "url"

    .line 59
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    .line 60
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez p4, :cond_6

    goto :goto_0

    :cond_6
    const-string p2, "type"

    .line 62
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "image"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 63
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setThumburl(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    const-string p2, "type"

    .line 64
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "video"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 65
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setVideourl(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    const-string p2, "type"

    .line 66
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 67
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setAudiourl(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    :goto_0
    return-void

    :cond_a
    const-string p1, "enclosure"

    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 70
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->media:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string p1, "url"

    .line 71
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type"

    .line 72
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "image"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 73
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setThumburl(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string p2, "type"

    .line 74
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "video"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 75
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setVideourl(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string p2, "type"

    .line 76
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 77
    iget-object p2, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->setAudiourl(Ljava/lang/String;)V

    goto :goto_5

    .line 52
    :cond_d
    :goto_1
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->pubdate:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    goto :goto_5

    .line 50
    :cond_e
    :goto_2
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->link:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    goto :goto_5

    .line 48
    :cond_f
    :goto_3
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->description:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    goto :goto_5

    :cond_10
    :goto_4
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->itemFound:Z

    .line 43
    new-instance p1, Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-direct {p1}, Lcom/sherdle/universal/providers/rss/RSSItem;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    .line 44
    sget-object p1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->unknown:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSHandler;->currentState:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    :cond_11
    :goto_5
    return-void
.end method
