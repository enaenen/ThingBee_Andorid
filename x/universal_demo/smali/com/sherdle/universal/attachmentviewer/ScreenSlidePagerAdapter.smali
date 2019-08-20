.class public Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ScreenSlidePagerAdapter.java"


# instance fields
.field private isZoomable:Z

.field private mListOfMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;",
            ">;Z)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->isZoomable:Z

    .line 30
    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->mListOfMedia:Ljava/util/List;

    .line 31
    iput-boolean p3, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->isZoomable:Z

    return-void
.end method

.method private loadImageFragment(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 45
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-direct {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;-><init>()V

    .line 46
    invoke-virtual {v0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->setMediaLoader(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;)V

    .line 48
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "zoom"

    .line 49
    iget-boolean v2, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->isZoomable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->mListOfMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->mListOfMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->mListOfMedia:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    .line 39
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ScreenSlidePagerAdapter;->loadImageFragment(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
