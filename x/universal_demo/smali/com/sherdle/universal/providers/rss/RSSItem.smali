.class public Lcom/sherdle/universal/providers/rss/RSSItem;
.super Ljava/lang/Object;
.source "RSSItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private audiourl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private pubdate:Ljava/lang/String;

.field private rowdescription:Ljava/lang/String;

.field private thumburl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private videourl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->title:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->description:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->rowdescription:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->link:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->pubdate:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->thumburl:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->audiourl:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->videourl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAudiourl()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->audiourl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getPubdate()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->pubdate:Ljava/lang/String;

    return-object v0
.end method

.method public getRowDescription()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->rowdescription:Ljava/lang/String;

    return-object v0
.end method

.method public getThumburl()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->thumburl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideourl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->videourl:Ljava/lang/String;

    return-object v0
.end method

.method setAudiourl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->audiourl:Ljava/lang/String;

    return-void
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->description:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->stripHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->rowdescription:Ljava/lang/String;

    return-void
.end method

.method setLink(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->link:Ljava/lang/String;

    return-void
.end method

.method setPubdate(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->pubdate:Ljava/lang/String;

    return-void
.end method

.method setThumburl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->thumburl:Ljava/lang/String;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->title:Ljava/lang/String;

    return-void
.end method

.method setVideourl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/RSSItem;->videourl:Ljava/lang/String;

    return-void
.end method

.method public stripHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 84
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x20

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa0

    .line 85
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const v1, 0xfffc

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
