.class public Lcom/sherdle/universal/providers/twitter/Tweet;
.super Ljava/lang/Object;
.source "Tweet.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private retweetCount:I

.field private tweetDate:Ljava/lang/String;

.field private tweetId:Ljava/lang/String;

.field private urlProfileImage:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fomatData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const-string v0, "UTC"

    .line 102
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE MMM dd HH:mm:ss yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 104
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd/MM/yy, \'at\' HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error parsing data"

    .line 110
    invoke-virtual {p1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private removeTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "(\\s[+|-]\\d{4})"

    const-string v1, ""

    .line 117
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->tweetDate:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRetweetCount()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->retweetCount:I

    return v0
.end method

.method public getTweetId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->tweetId:Ljava/lang/String;

    return-object v0
.end method

.method public getmessage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getname()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public geturlProfileImage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->urlProfileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getusername()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/twitter/Tweet;->removeTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/twitter/Tweet;->fomatData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->tweetDate:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setRetweetCount(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->retweetCount:I

    return-void
.end method

.method public setTweetId(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->tweetId:Ljava/lang/String;

    return-void
.end method

.method public setmessage(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->message:Ljava/lang/String;

    return-void
.end method

.method public setname(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->name:Ljava/lang/String;

    return-void
.end method

.method public seturlProfileImage(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->urlProfileImage:Ljava/lang/String;

    return-void
.end method

.method public setusername(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sherdle/universal/providers/twitter/Tweet;->username:Ljava/lang/String;

    return-void
.end method
