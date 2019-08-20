.class public Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DelegatingPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;
    }
.end annotation


# instance fields
.field private final mDelegate:Landroid/support/v4/view/PagerAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    .line 32
    new-instance v0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$MyDataSetObserver;-><init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDelegate()Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method superNotifyDataSetChanged()V
    .locals 0

    .line 110
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->mDelegate:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
