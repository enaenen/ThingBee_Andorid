.class public Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;
.super Lcom/sherdle/universal/util/DetailActivity;
.source "YoutubeDetailActivity.java"


# static fields
.field public static final EXTRA_VIDEO:Ljava/lang/String; = "videoitem"


# instance fields
.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

.field private mPresentation:Landroid/widget/TextView;

.field private video:Lcom/sherdle/universal/providers/youtube/api/object/Video;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/youtube/api/object/Video;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 49
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->setContentView(I)V

    const p1, 0x7f0900d5

    .line 50
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const v0, 0x7f0b002f

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p1, 0x7f0901a6

    .line 54
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 55
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const p1, 0x7f0901d7

    .line 60
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->mPresentation:Landroid/widget/TextView;

    const p1, 0x7f0901d5

    .line 61
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0901d6

    .line 62
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoitem"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/youtube/api/object/Video;

    iput-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 67
    invoke-static {p0}, Lcom/sherdle/universal/util/WebHelper;->getTextViewFontSize(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    .line 66
    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->mPresentation:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 73
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getUpdated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 75
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09001e

    .line 81
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900ba

    .line 83
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->thumb:Landroid/widget/ImageView;

    const p1, 0x7f090059

    .line 84
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    .line 86
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 88
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getImage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->setUpHeader(Ljava/lang/String;)V

    const p1, 0x7f09012f

    .line 90
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    .line 91
    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->bringToFront()V

    .line 93
    new-instance v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$1;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09009f

    .line 104
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 107
    new-instance v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$2;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090053

    .line 132
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 135
    new-instance v0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity$3;-><init>(Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0010

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 199
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 190
    :pswitch_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.youtube:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 191
    invoke-virtual {v3}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://www.youtube.com/watch?v="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    :goto_0
    return v2

    .line 167
    :pswitch_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0026

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0105

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0106

    .line 177
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.TEXT"

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "http://youtube.com/watch?v="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    .line 180
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    .line 182
    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->video:Lcom/sherdle/universal/providers/youtube/api/object/Video;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/youtube/api/object/Video;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f00ee

    .line 185
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f0900f9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .line 152
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onResume()V

    return-void
.end method
