.class Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;
.super Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/duolingo/open/rtlviewpager/RtlViewPager;Landroid/support/v4/view/PagerAdapter;)V
    .locals 0
    .param p1    # Lcom/duolingo/open/rtlviewpager/RtlViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 258
    invoke-direct {p0, p2}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 274
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 266
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 279
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    .line 280
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    :cond_2
    :goto_1
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 306
    :cond_0
    invoke-super {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 322
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 314
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 330
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->this$0:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-static {v0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->access$500(Lcom/duolingo/open/rtlviewpager/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 338
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
