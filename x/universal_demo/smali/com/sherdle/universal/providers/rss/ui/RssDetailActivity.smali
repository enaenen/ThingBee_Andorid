.class public Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;
.super Lcom/sherdle/universal/util/DetailActivity;
.source "RssDetailActivity.java"


# static fields
.field public static final EXTRA_RSSITEM:Ljava/lang/String; = "postitem"


# instance fields
.field private item:Lcom/sherdle/universal/providers/rss/RSSItem;

.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

.field private wb:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/rss/RSSItem;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 59
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->setContentView(I)V

    const p1, 0x7f0900d5

    .line 60
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const v0, 0x7f0b0027

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p1, 0x7f0901a6

    .line 64
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 65
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 66
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0900ba

    .line 69
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->thumb:Landroid/widget/ImageView;

    const p1, 0x7f090059

    .line 70
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    const p1, 0x7f09006c

    .line 72
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f09006b

    .line 73
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 76
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "postitem"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/providers/rss/RSSItem;

    iput-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    .line 78
    iget-object v2, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getPubdate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->setUpHeader(Ljava/lang/String;)V

    const p1, 0x7f090065

    .line 83
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    .line 86
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 87
    invoke-static {p1, p0}, Lcom/sherdle/universal/util/WebHelper;->docToBetterHTML(Lorg/jsoup/nodes/Document;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 89
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getLink()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 92
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 93
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p0}, Lcom/sherdle/universal/util/WebHelper;->getWebViewFontSize(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 94
    iget-object p1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    new-instance v0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$1;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const p1, 0x7f09001e

    .line 125
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0900f4

    .line 127
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/rss/RSSItem;->getVideourl()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/rss/RSSItem;->getAudiourl()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 136
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    :goto_0
    new-instance v2, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$2;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09010e

    .line 150
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 153
    new-instance v0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$3;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900a0

    .line 162
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 165
    new-instance v0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity$4;-><init>(Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0900f7

    if-eq v0, v1, :cond_0

    .line 213
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 205
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/rss/RSSItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->item:Lcom/sherdle/universal/providers/rss/RSSItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/rss/RSSItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->finish()V

    return v2
.end method

.method public onPause()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;->wb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method
