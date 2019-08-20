.class public Lcom/rubengees/introduction/IntroductionConfiguration;
.super Ljava/lang/Object;
.source "IntroductionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;


# instance fields
.field private indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

.field private onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

.field private pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static destroy()V
    .locals 2

    .line 55
    sget-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rubengees/introduction/IntroductionConfiguration;->onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

    .line 57
    sget-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    iput-object v1, v0, Lcom/rubengees/introduction/IntroductionConfiguration;->pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 58
    sget-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    iput-object v1, v0, Lcom/rubengees/introduction/IntroductionConfiguration;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    .line 60
    sput-object v1, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    :cond_0
    return-void
.end method

.method static getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 47
    sget-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/rubengees/introduction/IntroductionConfiguration;

    invoke-direct {v0}, Lcom/rubengees/introduction/IntroductionConfiguration;-><init>()V

    sput-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    .line 51
    :cond_0
    sget-object v0, Lcom/rubengees/introduction/IntroductionConfiguration;->INSTANCE:Lcom/rubengees/introduction/IntroductionConfiguration;

    return-object v0
.end method


# virtual methods
.method callOnSlideChanged(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 87
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

    invoke-virtual {v0, p1, p2}, Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;->onSlideChanged(II)V

    :cond_0
    return-void
.end method

.method callOnSlideInit(ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;->onSlideInit(ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method getIndicatorManager()Lcom/rubengees/introduction/interfaces/IndicatorManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    return-object v0
.end method

.method getPageTransformer()Landroid/support/v4/view/ViewPager$PageTransformer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    return-object v0
.end method

.method setIndicatorManager(Lcom/rubengees/introduction/interfaces/IndicatorManager;)V
    .locals 0
    .param p1    # Lcom/rubengees/introduction/interfaces/IndicatorManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    return-void
.end method

.method setOnSlideChangedListener(Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;)V
    .locals 0
    .param p1    # Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->onSlideListener:Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;

    return-void
.end method

.method setPageTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 0
    .param p1    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionConfiguration;->pageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    return-void
.end method
