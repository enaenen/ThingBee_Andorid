.class public Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;
.super Lcom/sherdle/universal/util/DetailActivity;
.source "WordpressDetailActivity.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;


# static fields
.field public static final EXTRA_API_BASE:Ljava/lang/String; = "apiurl"

.field public static final EXTRA_DISQUS:Ljava/lang/String; = "disqus"

.field public static final EXTRA_POSTITEM:Ljava/lang/String; = "postitem"

.field public static final PRELOAD_POSTS:Z = true

.field private static final REMOVE_FIRST_IMG:Z = true


# instance fields
.field private apiBase:Ljava/lang/String;

.field private disqusParseable:Ljava/lang/String;

.field private htmlTextView:Landroid/webkit/WebView;

.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

.field private mTitle:Landroid/widget/TextView;

.field private post:Lcom/sherdle/universal/providers/wordpress/PostItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/sherdle/universal/util/DetailActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/wordpress/PostItem;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/fav/FavDbAdapter;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->disqusParseable:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->apiBase:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadPostBody(Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    return-void
.end method

.method private configureContentWebView()V
    .locals 2

    const v0, 0x7f0900b4

    .line 157
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    .line 158
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 160
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 161
    invoke-static {p0}, Lcom/sherdle/universal/util/WebHelper;->getWebViewFontSize(Landroid/content/Context;)I

    move-result v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 162
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 163
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$1;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private configureFAB()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :cond_1
    return-void
.end method

.method private configureFavoritesButton()V
    .locals 2

    const v0, 0x7f09009f

    .line 262
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 263
    new-instance v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$5;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadHeaderImage()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 222
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->thumb:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$3;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015d

    .line 250
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$4;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private loadPostBody(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    .locals 7

    if-eqz p1, :cond_5

    .line 378
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->setHTML(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentsArray()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->disqusParseable:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 385
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v3, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JETPACK:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v0

    sget-object v3, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v0, v3, :cond_6

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    :cond_2
    const v0, 0x7f090053

    .line 388
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 391
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v1

    const v1, 0x7f0f0038

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object v2

    sget-object v3, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 394
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getCommentCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Lcom/sherdle/universal/util/Helper;->formatValue(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 392
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :goto_1
    new-instance v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$8;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const p1, 0x7f09013b

    .line 423
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 425
    invoke-static {p0}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private loadRelatedPosts()V
    .locals 10

    .line 293
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "apiurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f090149

    .line 294
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 295
    new-instance v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "apiurl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v0, p0, v2, v4}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getId()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->ignoreId:Ljava/lang/Long;

    .line 297
    new-instance v2, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$6;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$6;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V

    invoke-virtual {v1, v2}, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->setListener(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;)V

    .line 303
    new-instance v8, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;

    invoke-direct {v8, p0, v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$7;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)V

    .line 320
    new-instance v2, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    iget-object v6, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->posts:Ljava/util/ArrayList;

    const/4 v7, 0x0

    iget-object v4, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->simpleMode:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    iput-object v2, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    .line 321
    iget-object v2, v1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->adapter:Lcom/sherdle/universal/providers/wordpress/WordpressListAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 322
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 324
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsLoader;->getTagPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private shareContent()V
    .locals 4

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "text/plain"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Share using"

    .line 373
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public completed(Lcom/sherdle/universal/providers/wordpress/PostItem;)V
    .locals 1

    .line 448
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$9;-><init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 92
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0022

    .line 94
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->setContentView(I)V

    const p1, 0x7f0900d5

    .line 95
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    const v0, 0x7f0b002e

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p1, 0x7f0901a6

    .line 99
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 100
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 101
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f0900ba

    .line 105
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->thumb:Landroid/widget/ImageView;

    const p1, 0x7f090059

    .line 106
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->coolblue:Landroid/widget/RelativeLayout;

    const p1, 0x7f0901a2

    .line 107
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f090061

    .line 108
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 111
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "postitem"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/wordpress/PostItem;

    iput-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 113
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "disqus"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->disqusParseable:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "apiurl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->apiBase:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 122
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x240c8400

    const/high16 v9, 0x80000

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    .line 124
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadHeaderImage()V

    .line 132
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->configureFAB()V

    .line 133
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getImageCandidate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->setUpHeader(Ljava/lang/String;)V

    const p1, 0x7f09001e

    .line 135
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    .line 137
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->configureContentWebView()V

    .line 140
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "apiurl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;-><init>(Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;)V

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader;->start()V

    goto :goto_1

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getPostType()Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 143
    new-instance p1, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;

    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "apiurl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;-><init>(Lcom/sherdle/universal/providers/wordpress/PostItem;Ljava/lang/String;Lcom/sherdle/universal/providers/wordpress/api/JsonApiPostLoader$BackgroundPostCompleterListener;)V

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/api/RestApiPostLoader;->start()V

    .line 144
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadPostBody(Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadPostBody(Lcom/sherdle/universal/providers/wordpress/PostItem;)V

    .line 149
    :goto_1
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->configureFavoritesButton()V

    .line 150
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadRelatedPosts()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c000f

    .line 347
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 353
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 364
    invoke-super {p0, p1}, Lcom/sherdle/universal/util/DetailActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 361
    :pswitch_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return v2

    .line 358
    :pswitch_1
    invoke-direct {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->shareContent()V

    return v2

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f0900f9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 333
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onPause()V

    .line 334
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/sherdle/universal/util/DetailActivity;->onResume()V

    .line 340
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 7

    .line 430
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    const-string v0, "img"

    .line 434
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "img"

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "img"

    .line 435
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->remove()V

    .line 438
    :cond_0
    invoke-static {p1, p0}, Lcom/sherdle/universal/util/WebHelper;->docToBetterHTML(Lorg/jsoup/nodes/Document;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 440
    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->post:Lcom/sherdle/universal/providers/wordpress/PostItem;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/PostItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->htmlTextView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    const p1, 0x7f09013b

    .line 442
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
