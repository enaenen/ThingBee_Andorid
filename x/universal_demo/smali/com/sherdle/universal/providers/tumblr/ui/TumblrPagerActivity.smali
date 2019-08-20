.class public Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;
.super Landroid/app/Activity;
.source "TumblrPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final STATE_POSITION:Ljava/lang/String; = "STATE_POSITION"


# instance fields
.field imagePager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0028

    .line 55
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.nostra13.example.universalimageloader.IMAGES"

    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "com.nostra13.example.universalimageloader.IMAGE_POSITION"

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    const-string v0, "STATE_POSITION"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const p1, 0x7f09011c

    .line 66
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->imagePager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->imagePager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;

    invoke-direct {v2, p0, v1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->imagePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_1
    const p1, 0x7f09001e

    .line 72
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "STATE_POSITION"

    .line 78
    iget-object v1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->imagePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
