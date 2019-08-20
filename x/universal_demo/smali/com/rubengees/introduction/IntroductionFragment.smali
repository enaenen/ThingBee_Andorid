.class public Lcom/rubengees/introduction/IntroductionFragment;
.super Landroid/support/v4/app/Fragment;
.source "IntroductionFragment.java"


# static fields
.field private static final BUNDLE_SLIDE:Ljava/lang/String; = "introduction_slide"


# instance fields
.field private root:Landroid/view/View;

.field private slide:Lcom/rubengees/introduction/entity/Slide;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rubengees/introduction/IntroductionFragment;)Lcom/rubengees/introduction/entity/Slide;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    return-object p0
.end method

.method private getLineCountForDescription()I
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    return v1
.end method

.method private getLineCountForTitle()I
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    return v1
.end method

.method private initCustomViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v0}, Lcom/rubengees/introduction/entity/Slide;->getCustomViewBuilder()Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;->buildView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initDefaultViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 109
    sget v0, Lcom/rubengees/introduction/R$layout;->introduction_fragment_default_content:I

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 112
    sget v0, Lcom/rubengees/introduction/R$id;->introduction_fragment_default_content_title:I

    .line 113
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    sget v2, Lcom/rubengees/introduction/R$id;->introduction_fragment_default_content_image:I

    .line 115
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 116
    sget v3, Lcom/rubengees/introduction/R$id;->introduction_fragment_default_content_description_container:I

    .line 117
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 120
    iget-object v4, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v4}, Lcom/rubengees/introduction/entity/Slide;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v4}, Lcom/rubengees/introduction/entity/Slide;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getLineCountForTitle()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v4}, Lcom/rubengees/introduction/entity/Slide;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v4}, Lcom/rubengees/introduction/entity/Slide;->getOption()Lcom/rubengees/introduction/entity/Option;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 126
    sget v4, Lcom/rubengees/introduction/R$layout;->introduction_fragment_option:I

    .line 127
    invoke-virtual {p1, v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/AppCompatCheckBox;

    .line 130
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getOption()Lcom/rubengees/introduction/entity/Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Option;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getOption()Lcom/rubengees/introduction/entity/Option;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Option;->isActivated()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 132
    new-instance v1, Lcom/rubengees/introduction/IntroductionFragment$1;

    invoke-direct {v1, p0}, Lcom/rubengees/introduction/IntroductionFragment$1;-><init>(Lcom/rubengees/introduction/IntroductionFragment;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x106000b

    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getLineCountForDescription()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setMaxLines(I)V

    .line 141
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 145
    :cond_1
    sget v4, Lcom/rubengees/introduction/R$layout;->introduction_fragment_description:I

    invoke-virtual {p1, v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 148
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getLineCountForDescription()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 153
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getImageResource()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getImageResource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    :cond_3
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;

    move-result-object v1

    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v3}, Lcom/rubengees/introduction/entity/Slide;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3, v0, v2, p1}, Lcom/rubengees/introduction/IntroductionConfiguration;->callOnSlideInit(ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object p2
.end method

.method private initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 89
    sget p3, Lcom/rubengees/introduction/R$layout;->introduction_fragment:I

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 91
    sget v0, Lcom/rubengees/introduction/R$id;->introduction_fragment_content_container:I

    .line 92
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Slide;->getCustomViewBuilder()Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/rubengees/introduction/IntroductionFragment;->initDefaultViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/rubengees/introduction/IntroductionFragment;->initCustomViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {p1}, Lcom/rubengees/introduction/entity/Slide;->getColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 101
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    invoke-virtual {p1}, Lcom/rubengees/introduction/entity/Slide;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object p3
.end method

.method public static newInstance(Lcom/rubengees/introduction/entity/Slide;)Lcom/rubengees/introduction/IntroductionFragment;
    .locals 3
    .param p0    # Lcom/rubengees/introduction/entity/Slide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    new-instance v0, Lcom/rubengees/introduction/IntroductionFragment;

    invoke-direct {v0}, Lcom/rubengees/introduction/IntroductionFragment;-><init>()V

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "introduction_slide"

    .line 56
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/rubengees/introduction/IntroductionFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getIntroductionActivity()Lcom/rubengees/introduction/IntroductionActivity;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/rubengees/introduction/IntroductionActivity;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "introduction_slide"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/rubengees/introduction/entity/Slide;

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment;->slide:Lcom/rubengees/introduction/entity/Slide;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/rubengees/introduction/IntroductionFragment;->initViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment;->root:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/rubengees/introduction/IntroductionFragment;->getIntroductionActivity()Lcom/rubengees/introduction/IntroductionActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubengees/introduction/IntroductionActivity;->getStyle()Lcom/rubengees/introduction/style/Style;

    move-result-object p1

    iget-object p2, p0, Lcom/rubengees/introduction/IntroductionFragment;->root:Landroid/view/View;

    invoke-virtual {p1, p0, p2}, Lcom/rubengees/introduction/style/Style;->applyStyleOnFragmentView(Landroid/support/v4/app/Fragment;Landroid/view/View;)V

    .line 76
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment;->root:Landroid/view/View;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment;->root:Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method
