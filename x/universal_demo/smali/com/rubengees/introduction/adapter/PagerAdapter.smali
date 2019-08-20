.class public Lcom/rubengees/introduction/adapter/PagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PagerAdapter.java"


# instance fields
.field private slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rubengees/introduction/entity/Slide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/rubengees/introduction/entity/Slide;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 43
    iput-object p2, p0, Lcom/rubengees/introduction/adapter/PagerAdapter;->slides:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/rubengees/introduction/adapter/PagerAdapter;->slides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/rubengees/introduction/adapter/PagerAdapter;->slides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rubengees/introduction/entity/Slide;

    invoke-static {p1}, Lcom/rubengees/introduction/IntroductionFragment;->newInstance(Lcom/rubengees/introduction/entity/Slide;)Lcom/rubengees/introduction/IntroductionFragment;

    move-result-object p1

    return-object p1
.end method
