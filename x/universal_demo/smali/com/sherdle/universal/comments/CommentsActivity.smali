.class public Lcom/sherdle/universal/comments/CommentsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CommentsActivity.java"


# static fields
.field public static DATA_ID:Ljava/lang/String; = "id"

.field public static DATA_PARSEABLE:Ljava/lang/String; = "parseable"

.field public static DATA_TYPE:Ljava/lang/String; = "type"

.field public static DISQUS:I = 0x7

.field public static FACEBOOK:I = 0x2

.field public static INSTAGRAM:I = 0x1

.field public static WORDPRESS_JETPACK:I = 0x4

.field public static WORDPRESS_JSON:I = 0x5

.field public static WORDPRESS_REST:I = 0x6

.field public static YOUTUBE:I = 0x3


# instance fields
.field comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/comments/Comment;",
            ">;"
        }
    .end annotation
.end field

.field commentsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/sherdle/universal/comments/Comment;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->orderComments(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkIfContains(I)I
    .locals 2

    const/4 v0, 0x0

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/comments/Comment;

    iget v1, v1, Lcom/sherdle/universal/comments/Comment;->id:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private fetchComments(Ljava/lang/String;)V
    .locals 5

    .line 79
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->INSTAGRAM:I

    const v2, 0x7f0f0091

    const v3, 0x7f090072

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity$1;-><init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 122
    :cond_0
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->FACEBOOK:I

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_7

    .line 126
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 127
    new-instance v1, Lcom/sherdle/universal/comments/Comment;

    invoke-direct {v1}, Lcom/sherdle/universal/comments/Comment;-><init>()V

    const-string v2, "message"

    .line 128
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sherdle/universal/comments/Comment;->text:Ljava/lang/String;

    const-string v2, "from"

    .line 129
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "from"

    .line 130
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    .line 131
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sherdle/universal/comments/Comment;->username:Ljava/lang/String;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.facebook.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "from"

    .line 134
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/picture?type=large"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/sherdle/universal/comments/Comment;->profileUrl:Ljava/lang/String;

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 143
    :cond_2
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->YOUTUBE:I

    if-ne v0, v1, :cond_3

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://www.googleapis.com/youtube/v3/commentThreads?part=snippet&maxResults=100&videoId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity$2;-><init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 196
    :cond_3
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_JSON:I

    if-ne v0, v1, :cond_4

    .line 198
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity$3;-><init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 245
    :cond_4
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_REST:I

    if-ne v0, v1, :cond_5

    .line 246
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity$4;-><init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 293
    :cond_5
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->WORDPRESS_JETPACK:I

    if-ne v0, v1, :cond_6

    .line 295
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sherdle/universal/comments/CommentsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity$5;-><init>(Lcom/sherdle/universal/comments/CommentsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 354
    :cond_6
    iget v0, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->DISQUS:I

    if-ne v0, v1, :cond_7

    const-string v0, ";"

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 359
    aget-object v0, p1, v0

    const-string v1, "%d"

    iget-object v2, p0, Lcom/sherdle/universal/comments/CommentsActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 362
    aget-object v2, p1, v1

    invoke-virtual {p0, v0, v2}, Lcom/sherdle/universal/comments/CommentsActivity;->getHtmlComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    aget-object p1, p1, v4

    invoke-static {p0, p1, v4, v1, v0}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->finish()V

    .line 370
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->commentsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private orderComments(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/comments/Comment;",
            ">;)V"
        }
    .end annotation

    .line 383
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 388
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/comments/Comment;

    iget v1, v1, Lcom/sherdle/universal/comments/Comment;->parentId:I

    invoke-direct {p0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->checkIfContains(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 390
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/comments/Comment;

    iget-object v3, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sherdle/universal/comments/Comment;

    iget v3, v3, Lcom/sherdle/universal/comments/Comment;->linesCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sherdle/universal/comments/Comment;->linesCount:I

    .line 391
    iget-object v2, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 392
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void
.end method


# virtual methods
.method public getHtmlComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"></head><body><div id=\'disqus_thread\'></div></body><script type=\'text/javascript\'>var disqus_identifier = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';var disqus_shortname = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; (function() { var dsq = document.createElement(\'script\'); dsq.type = \'text/javascript\'; dsq.async = true;dsq.src = \'/embed.js\';(document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(dsq); })();</script></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    const p1, 0x7f0b0020

    .line 50
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->setContentView(I)V

    const p1, 0x7f0901a6

    .line 52
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 53
    iget-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 54
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0038

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f09001e

    .line 58
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 61
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    .line 63
    sget-object v1, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->id:Ljava/lang/String;

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    .line 66
    new-instance p1, Lcom/sherdle/universal/comments/CommentsAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->comments:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sherdle/universal/comments/CommentsActivity;->type:I

    invoke-direct {p1, p0, v1, v2}, Lcom/sherdle/universal/comments/CommentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->commentsAdapter:Landroid/widget/ArrayAdapter;

    const p1, 0x7f0900e4

    .line 68
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 69
    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->commentsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f090072

    .line 70
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity;->commentsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 75
    invoke-direct {p0, v0}, Lcom/sherdle/universal/comments/CommentsActivity;->fetchComments(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 418
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 428
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/comments/CommentsActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
