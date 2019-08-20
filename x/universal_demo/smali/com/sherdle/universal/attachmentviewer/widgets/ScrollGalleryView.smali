.class public Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
.super Landroid/widget/LinearLayout;
.source "ScrollGalleryView.java"


# static fields
.field private static SELECTED_ALPHA:F = 0.5f


# instance fields
.field private context:Landroid/content/Context;

.field private displayProps:Landroid/graphics/Point;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mListOfMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;",
            ">;"
        }
    .end annotation
.end field

.field private pagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private final thumbnailOnClickListener:Landroid/view/View$OnClickListener;

.field private thumbnailSize:I

.field private thumbnailsContainer:Landroid/widget/LinearLayout;

.field private thumbnailsHiddenEnabled:Z

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private final viewPagerChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field private zoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p2, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$1;-><init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)V

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPagerChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 58
    new-instance p2, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$2;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$2;-><init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)V

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailOnClickListener:Landroid/view/View$OnClickListener;

    .line 67
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->context:Landroid/content/Context;

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->mListOfMedia:Ljava/util/List;

    const/4 p2, 0x1

    .line 70
    invoke-virtual {p0, p2}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->setOrientation(I)V

    .line 71
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->displayProps:Landroid/graphics/Point;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001c

    .line 73
    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0901a0

    .line 75
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const p1, 0x7f09019f

    .line 77
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsContainer:Landroid/widget/LinearLayout;

    .line 78
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->displayProps:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->displayProps:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->scroll(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private addThumbnail(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 3

    .line 196
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailSize:I

    iget v2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 197
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 198
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->createThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 200
    invoke-direct {p0, v0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->createThumbnailView(Landroid/widget/LinearLayout$LayoutParams;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object p1

    .line 201
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private calculateInSampleSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    .line 243
    :goto_0
    div-int v1, p1, v0

    if-gt v1, p3, :cond_1

    div-int v1, p2, v0

    if-le v1, p4, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private createThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 216
    iget v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailSize:I

    iget v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailSize:I

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private createThumbnailView(Landroid/widget/LinearLayout$LayoutParams;Landroid/graphics/Bitmap;)Landroid/widget/ImageView;
    .locals 2

    .line 206
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->mListOfMedia:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 185
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 187
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object v1
.end method

.method private initializeViewPager()V
    .locals 4

    const v0, 0x7f0901c7

    .line 220
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 221
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->mListOfMedia:Ljava/util/List;

    iget-boolean v3, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->zoomEnabled:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 222
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 223
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPagerChangeListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private scroll(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 227
    new-array v1, v0, [I

    .line 228
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 230
    aget v1, v1, v2

    iget v3, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailSize:I

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 231
    iget-object v3, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->displayProps:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 233
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    neg-int v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->mListOfMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    sget v0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->SELECTED_ALPHA:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public addMedia(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 1

    if-nez p1, :cond_0

    .line 115
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Infos may not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->addMedia(Ljava/util/List;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    move-result-object p1

    return-object p1
.end method

.method public addMedia(Ljava/util/List;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;",
            ">;)",
            "Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 123
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Infos may not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    .line 127
    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->mListOfMedia:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->getDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->addThumbnail(Landroid/graphics/Bitmap;)Landroid/widget/ImageView;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$4;

    invoke-direct {v3, p0, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$4;-><init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V

    .line 137
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->pagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->SELECTED_ALPHA:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-object p0
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 97
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;-><init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public hideThumbnails(Z)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 1

    .line 167
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsHiddenEnabled:Z

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-object p0
.end method

.method public setCurrentItem(I)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-object p0
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 83
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->initializeViewPager()V

    return-object p0
.end method

.method public setThumbnailSize(I)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 0

    .line 157
    iput p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailSize:I

    return-object p0
.end method

.method public setZoom(Z)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->zoomEnabled:Z

    return-object p0
.end method

.method public thumbnailsHidden()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsHiddenEnabled:Z

    return v0
.end method
