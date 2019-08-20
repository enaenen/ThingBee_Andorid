.class public Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AttachmentActivity.java"


# static fields
.field public static IMAGES:Ljava/lang/String; = "images"


# instance fields
.field private mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;",
            ">;"
        }
    .end annotation
.end field

.field private scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static easyInitView(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/attachmentviewer/model/Attachment;",
            ">;",
            "Landroid/support/v4/app/FragmentManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    .line 77
    instance-of v2, v1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    if-eqz v2, :cond_0

    .line 78
    check-cast v1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    .line 79
    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    new-instance v2, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;

    invoke-direct {v2, v1}, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_VID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    new-instance v2, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;

    invoke-direct {v2, v1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_AUDIO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    new-instance v2, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

    invoke-direct {v2, v1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_3
    new-instance v2, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;

    invoke-direct {v2, v1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0700c2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->setThumbnailSize(I)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    move-result-object p1

    const/4 v1, 0x1

    .line 91
    invoke-virtual {p1, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->setZoom(Z)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p2}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->setFragmentManager(Landroid/support/v4/app/FragmentManager;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->addMedia(Ljava/util/List;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 96
    invoke-virtual {p0, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->hideThumbnails(Z)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    :cond_5
    return-object v0
.end method

.method public static startActivity(Landroid/content/Context;Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    .locals 3

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    sget-object v1, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->IMAGES:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;",
            ">;)V"
        }
    .end annotation

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    sget-object v1, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->IMAGES:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    const p1, 0x7f0b001b

    .line 58
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->setContentView(I)V

    const p1, 0x7f0901a5

    .line 60
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 61
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f060023

    .line 63
    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 65
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->IMAGES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const v0, 0x7f09015b

    .line 66
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    const v0, 0x7f09001e

    .line 68
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sherdle/universal/util/Helper;->admobLoader(Landroid/content/Context;Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->easyInitView(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->mediaList:Ljava/util/List;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
