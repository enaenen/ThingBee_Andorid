.class public Lcom/rubengees/introduction/IntroductionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "IntroductionActivity.java"


# static fields
.field public static final OPTION_RESULT:Ljava/lang/String; = "introduction_option_result"

.field public static final STATE_PREVIOUS_PAGER_POSITION:Ljava/lang/String; = "previous_pager_position"


# instance fields
.field private allowBackPress:Z

.field private buttonManager:Lcom/rubengees/introduction/util/ButtonManager;

.field private configuration:Lcom/rubengees/introduction/IntroductionConfiguration;

.field private indicatorContainer:Landroid/widget/FrameLayout;

.field private indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

.field private next:Landroid/widget/ImageButton;

.field private orientation:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private previous:Landroid/widget/ImageButton;

.field private previousPagerPosition:I

.field private showIndicator:Z

.field private showPreviousButton:Z

.field private skip:Landroid/widget/Button;

.field private skipText:Ljava/lang/String;

.field private slides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rubengees/introduction/entity/Slide;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/rubengees/introduction/style/Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->previousPagerPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rubengees/introduction/IntroductionActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rubengees/introduction/IntroductionActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->handleFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/rubengees/introduction/IntroductionActivity;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/rubengees/introduction/IntroductionActivity;->previousPagerPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/rubengees/introduction/IntroductionActivity;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/rubengees/introduction/IntroductionActivity;->previousPagerPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/rubengees/introduction/IntroductionActivity;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/rubengees/introduction/IntroductionActivity;->select(I)V

    return-void
.end method

.method private applyStyle()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->style:Lcom/rubengees/introduction/style/Style;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->style:Lcom/rubengees/introduction/style/Style;

    invoke-virtual {v0, p0}, Lcom/rubengees/introduction/style/Style;->applyStyle(Landroid/app/Activity;)V

    .line 191
    iget v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->orientation:I

    if-nez v0, :cond_0

    .line 192
    invoke-static {p0}, Lcom/rubengees/introduction/util/OrientationUtils;->setOrientationPortrait(Landroid/app/Activity;)V

    goto :goto_0

    .line 193
    :cond_0
    iget v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 194
    invoke-static {p0}, Lcom/rubengees/introduction/util/OrientationUtils;->setOrientationLandscape(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private findViews()V
    .locals 2

    .line 200
    sget v0, Lcom/rubengees/introduction/R$id;->introduction_activity_root:I

    invoke-virtual {p0, v0}, Lcom/rubengees/introduction/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    sget v1, Lcom/rubengees/introduction/R$id;->introduction_activity_pager:I

    invoke-virtual {p0, v1}, Lcom/rubengees/introduction/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 202
    sget v1, Lcom/rubengees/introduction/R$id;->introduction_activity_button_previous:I

    invoke-virtual {p0, v1}, Lcom/rubengees/introduction/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->previous:Landroid/widget/ImageButton;

    .line 203
    sget v1, Lcom/rubengees/introduction/R$id;->introduction_activity_button_next:I

    invoke-virtual {p0, v1}, Lcom/rubengees/introduction/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->next:Landroid/widget/ImageButton;

    .line 204
    sget v1, Lcom/rubengees/introduction/R$id;->introduction_activity_container_indicator:I

    .line 205
    invoke-virtual {p0, v1}, Lcom/rubengees/introduction/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorContainer:Landroid/widget/FrameLayout;

    .line 206
    sget v1, Lcom/rubengees/introduction/R$id;->introduction_activity_skip:I

    invoke-virtual {p0, v1}, Lcom/rubengees/introduction/IntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->skip:Landroid/widget/Button;

    .line 208
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->style:Lcom/rubengees/introduction/style/Style;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->style:Lcom/rubengees/introduction/style/Style;

    invoke-virtual {v1, p0, v0}, Lcom/rubengees/introduction/style/Style;->applyStyleOnActivityView(Landroid/app/Activity;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private getFieldsFromBundle()V
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "introduction_slides"

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    const-string v1, "introduction_style"

    .line 166
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/rubengees/introduction/style/Style;

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->style:Lcom/rubengees/introduction/style/Style;

    const-string v1, "introduction_orientation"

    const/4 v2, 0x2

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->orientation:I

    const-string v1, "introduction_show_previous_button"

    const/4 v2, 0x1

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->showPreviousButton:Z

    const-string v1, "introduction_show_indicator"

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->showIndicator:Z

    const-string v1, "introduction_skip_string"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->skipText:Ljava/lang/String;

    const-string v1, "introduction_allow_back_press"

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->allowBackPress:Z

    .line 173
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->skipText:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "introduction_skip_resource"

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p0, v0}, Lcom/rubengees/introduction/IntroductionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->skipText:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private handleFinish()V
    .locals 4

    .line 324
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->destroy()V

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rubengees/introduction/entity/Slide;

    .line 328
    invoke-virtual {v2}, Lcom/rubengees/introduction/entity/Slide;->getOption()Lcom/rubengees/introduction/entity/Option;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 329
    invoke-virtual {v2}, Lcom/rubengees/introduction/entity/Slide;->getOption()Lcom/rubengees/introduction/entity/Option;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "introduction_option_result"

    .line 335
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 336
    invoke-virtual {p0, v0, v1}, Lcom/rubengees/introduction/IntroductionActivity;->setResult(ILandroid/content/Intent;)V

    .line 337
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionActivity;->finish()V

    return-void
.end method

.method private handleFinishCancelled()V
    .locals 1

    .line 341
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->destroy()V

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lcom/rubengees/introduction/IntroductionActivity;->setResult(I)V

    .line 343
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionActivity;->finish()V

    return-void
.end method

.method private initManagers()V
    .locals 8

    .line 222
    new-instance v7, Lcom/rubengees/introduction/util/ButtonManager;

    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->previous:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/rubengees/introduction/IntroductionActivity;->next:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionActivity;->skip:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/rubengees/introduction/IntroductionActivity;->showPreviousButton:Z

    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->skipText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/rubengees/introduction/util/ButtonManager;-><init>(Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;ZZI)V

    iput-object v7, p0, Lcom/rubengees/introduction/IntroductionActivity;->buttonManager:Lcom/rubengees/introduction/util/ButtonManager;

    .line 224
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->configuration:Lcom/rubengees/introduction/IntroductionConfiguration;

    invoke-virtual {v0}, Lcom/rubengees/introduction/IntroductionConfiguration;->getIndicatorManager()Lcom/rubengees/introduction/interfaces/IndicatorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    .line 226
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    if-nez v0, :cond_1

    .line 227
    iget-boolean v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->showIndicator:Z

    if-eqz v0, :cond_1

    .line 228
    new-instance v0, Lcom/rubengees/introduction/common/DotIndicatorManager;

    invoke-direct {v0}, Lcom/rubengees/introduction/common/DotIndicatorManager;-><init>()V

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 233
    invoke-virtual {v1, v2, v3, v4}, Lcom/rubengees/introduction/interfaces/IndicatorManager;->init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private initSlides()V
    .locals 2

    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubengees/introduction/entity/Slide;

    .line 217
    invoke-virtual {v1, p0, v0}, Lcom/rubengees/introduction/entity/Slide;->init(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->next:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubengees/introduction/IntroductionActivity$2;

    invoke-direct {v1, p0}, Lcom/rubengees/introduction/IntroductionActivity$2;-><init>(Lcom/rubengees/introduction/IntroductionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->previous:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubengees/introduction/IntroductionActivity$3;

    invoke-direct {v1, p0}, Lcom/rubengees/introduction/IntroductionActivity$3;-><init>(Lcom/rubengees/introduction/IntroductionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/rubengees/introduction/adapter/PagerAdapter;

    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionActivity;->slides:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/rubengees/introduction/adapter/PagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/rubengees/introduction/IntroductionActivity$4;

    invoke-direct {v1, p0}, Lcom/rubengees/introduction/IntroductionActivity$4;-><init>(Lcom/rubengees/introduction/IntroductionActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 284
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->previous:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->bringToFront()V

    .line 285
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->next:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->bringToFront()V

    .line 287
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->configuration:Lcom/rubengees/introduction/IntroductionConfiguration;

    invoke-virtual {v0}, Lcom/rubengees/introduction/IntroductionConfiguration;->getPageTransformer()Landroid/support/v4/view/ViewPager$PageTransformer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/rubengees/introduction/IntroductionActivity;->configuration:Lcom/rubengees/introduction/IntroductionConfiguration;

    invoke-virtual {v2}, Lcom/rubengees/introduction/IntroductionConfiguration;->getPageTransformer()Landroid/support/v4/view/ViewPager$PageTransformer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->skipText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->skip:Landroid/widget/Button;

    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->skipText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->skip:Landroid/widget/Button;

    new-instance v1, Lcom/rubengees/introduction/IntroductionActivity$5;

    invoke-direct {v1, p0}, Lcom/rubengees/introduction/IntroductionActivity$5;-><init>(Lcom/rubengees/introduction/IntroductionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private select(I)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->indicatorManager:Lcom/rubengees/introduction/interfaces/IndicatorManager;

    invoke-virtual {v0, p1}, Lcom/rubengees/introduction/interfaces/IndicatorManager;->select(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->buttonManager:Lcom/rubengees/introduction/util/ButtonManager;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->buttonManager:Lcom/rubengees/introduction/util/ButtonManager;

    invoke-virtual {v0, p1}, Lcom/rubengees/introduction/util/ButtonManager;->select(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method getStyle()Lcom/rubengees/introduction/style/Style;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->style:Lcom/rubengees/introduction/style/Style;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-boolean v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->allowBackPress:Z

    if-eqz v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->handleFinishCancelled()V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->getFieldsFromBundle()V

    .line 95
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->applyStyle()V

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget v0, Lcom/rubengees/introduction/R$layout;->introduction_activity:I

    invoke-virtual {p0, v0}, Lcom/rubengees/introduction/IntroductionActivity;->setContentView(I)V

    .line 100
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity;->configuration:Lcom/rubengees/introduction/IntroductionConfiguration;

    .line 102
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->findViews()V

    .line 103
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->initSlides()V

    .line 104
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->initManagers()V

    .line 105
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionActivity;->initViews()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/rubengees/introduction/IntroductionActivity;->select(I)V

    goto :goto_0

    :cond_0
    const-string v0, "previous_pager_position"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/rubengees/introduction/IntroductionActivity;->previousPagerPosition:I

    .line 112
    iget p1, p0, Lcom/rubengees/introduction/IntroductionActivity;->previousPagerPosition:I

    invoke-direct {p0, p1}, Lcom/rubengees/introduction/IntroductionActivity;->select(I)V

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/rubengees/introduction/IntroductionActivity$1;

    invoke-direct {v0, p0}, Lcom/rubengees/introduction/IntroductionActivity$1;-><init>(Lcom/rubengees/introduction/IntroductionActivity;)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 148
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "previous_pager_position"

    .line 150
    iget v1, p0, Lcom/rubengees/introduction/IntroductionActivity;->previousPagerPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
