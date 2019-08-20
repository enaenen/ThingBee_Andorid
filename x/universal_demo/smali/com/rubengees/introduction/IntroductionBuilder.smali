.class public Lcom/rubengees/introduction/IntroductionBuilder;
.super Ljava/lang/Object;
.source "IntroductionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubengees/introduction/IntroductionBuilder$Orientation;
    }
.end annotation


# static fields
.field static final BUNDLE_ALLOW_BACK_PRESS:Ljava/lang/String; = "introduction_allow_back_press"

.field static final BUNDLE_ORIENTATION:Ljava/lang/String; = "introduction_orientation"

.field static final BUNDLE_SHOW_INDICATOR:Ljava/lang/String; = "introduction_show_indicator"

.field static final BUNDLE_SHOW_PREVIOUS_BUTTON:Ljava/lang/String; = "introduction_show_previous_button"

.field static final BUNDLE_SKIP_RESOURCE:Ljava/lang/String; = "introduction_skip_resource"

.field static final BUNDLE_SKIP_STRING:Ljava/lang/String; = "introduction_skip_string"

.field static final BUNDLE_SLIDES:Ljava/lang/String; = "introduction_slides"

.field static final BUNDLE_STYLE:Ljava/lang/String; = "introduction_style"

.field public static final INTRODUCTION_REQUEST_CODE:I = 0x7d8e

.field public static final ORIENTATION_BOTH:I = 0x2

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# instance fields
.field private allowBackPress:Ljava/lang/Boolean;

.field private context:Landroid/app/Activity;

.field private orientation:Ljava/lang/Integer;

.field private showIndicator:Ljava/lang/Boolean;

.field private showPreviousButton:Ljava/lang/Boolean;

.field private skipResource:Ljava/lang/Integer;

.field private skipString:Ljava/lang/String;

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
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->context:Landroid/app/Activity;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->slides:Ljava/util/ArrayList;

    return-void
.end method

.method private check()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->slides:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to add slides."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->style:Lcom/rubengees/introduction/style/Style;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/rubengees/introduction/style/TranslucentStyle;

    invoke-direct {v0}, Lcom/rubengees/introduction/style/TranslucentStyle;-><init>()V

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->style:Lcom/rubengees/introduction/style/Style;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->orientation:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->orientation:Ljava/lang/Integer;

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showPreviousButton:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 275
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showPreviousButton:Ljava/lang/Boolean;

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showIndicator:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 279
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showIndicator:Ljava/lang/Boolean;

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->allowBackPress:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 283
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->allowBackPress:Ljava/lang/Boolean;

    :cond_5
    return-void
.end method


# virtual methods
.method public introduceMyself()V
    .locals 4

    .line 291
    invoke-direct {p0}, Lcom/rubengees/introduction/IntroductionBuilder;->check()V

    .line 293
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->context:Landroid/app/Activity;

    const-class v2, Lcom/rubengees/introduction/IntroductionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "introduction_slides"

    .line 296
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->slides:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "introduction_style"

    .line 297
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->style:Lcom/rubengees/introduction/style/Style;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "introduction_orientation"

    .line 298
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->orientation:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "introduction_show_previous_button"

    .line 299
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showPreviousButton:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "introduction_show_indicator"

    .line 300
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showIndicator:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "introduction_skip_string"

    .line 301
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "introduction_allow_back_press"

    .line 302
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->allowBackPress:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    iget-object v2, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipResource:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const-string v2, "introduction_skip_resource"

    .line 305
    iget-object v3, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipResource:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    iput-object v1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->context:Landroid/app/Activity;

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->context:Landroid/app/Activity;

    const/16 v2, 0x7d8e

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public withAllowBackPress(Z)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0

    .line 210
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->allowBackPress:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withForcedOrientation(I)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->orientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public withIndicatorEnabled(Z)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showIndicator:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withIndicatorManager(Lcom/rubengees/introduction/interfaces/IndicatorManager;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 1
    .param p1    # Lcom/rubengees/introduction/interfaces/IndicatorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 137
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubengees/introduction/IntroductionConfiguration;->setIndicatorManager(Lcom/rubengees/introduction/interfaces/IndicatorManager;)V

    return-object p0
.end method

.method public withOnSlideListener(Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 1
    .param p1    # Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 241
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubengees/introduction/IntroductionConfiguration;->setOnSlideChangedListener(Lcom/rubengees/introduction/IntroductionConfiguration$OnSlideListener;)V

    return-object p0
.end method

.method public withPageTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager$PageTransformer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 256
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubengees/introduction/IntroductionConfiguration;->setPageTransformer(Landroid/support/v4/view/ViewPager$PageTransformer;)V

    return-object p0
.end method

.method public withPreviousButtonEnabled(Z)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 152
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->showPreviousButton:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSkipEnabled(I)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipString:Ljava/lang/String;

    return-object p0
.end method

.method public withSkipEnabled(Ljava/lang/String;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->skipResource:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSlides(Ljava/util/List;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rubengees/introduction/entity/Slide;",
            ">;)",
            "Lcom/rubengees/introduction/IntroductionBuilder;"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 93
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must add at least one slide."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionBuilder;->slides:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs withSlides([Lcom/rubengees/introduction/entity/Slide;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rubengees/introduction/IntroductionBuilder;->withSlides(Ljava/util/List;)Lcom/rubengees/introduction/IntroductionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withStyle(Lcom/rubengees/introduction/style/Style;)Lcom/rubengees/introduction/IntroductionBuilder;
    .locals 0
    .param p1    # Lcom/rubengees/introduction/style/Style;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionBuilder;->style:Lcom/rubengees/introduction/style/Style;

    return-object p0
.end method
