.class public Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;
.super Landroid/support/v4/app/Fragment;
.source "AttachmentFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MEDIALOADER:Ljava/lang/String; = "loader"

.field public static final ZOOM:Ljava/lang/String; = "zoom"


# instance fields
.field private activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

.field private backgroundImage:Landroid/widget/ImageView;

.field private descriptionView:Landroid/widget/TextView;

.field private mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

.field private photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private rootView:Landroid/view/View;

.field private scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

.field private systemUIVisible:Z

.field private viewPager:Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->systemUIVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->createViewAttacher(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->systemUIVisible:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->hideSystemUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->showSystemUI()V

    return-void
.end method

.method private createViewAttacher(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "zoom"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "INFO"

    const-string v0, "Attaching zoom stuff"

    .line 125
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance p1, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->backgroundImage:Landroid/widget/ImageView;

    invoke-direct {p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 127
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance v0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    :cond_0
    return-void
.end method

.method private hideSystemUI()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->hideThumbnails(Z)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    .line 227
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x13

    if-eqz v0, :cond_0

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 235
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->systemUIVisible:Z

    return-void
.end method

.method private loadMediaToView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 113
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->backgroundImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/view/View;)V

    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V

    return-void
.end method

.method private showSystemUI()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->hideThumbnails(Z)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    .line 209
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x13

    if-eqz v0, :cond_1

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 218
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->systemUIVisible:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->activity:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentActivity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 191
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 192
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    if-eqz v0, :cond_0

    const v0, 0x7f0c0002

    .line 193
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 196
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v0

    instance-of v0, v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    .line 197
    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getMime()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->MIME_PATTERN_IMAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0003

    .line 198
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sherdle/universal/util/ThemeUtils;->lightToolbarThemeActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sherdle/universal/util/ThemeUtils;->setToolbarContentColor(Landroid/support/v7/widget/Toolbar;I)V

    .line 204
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 76
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x0

    const v1, 0x7f0b004d

    .line 79
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    const p2, 0x7f09002d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->backgroundImage:Landroid/widget/ImageView;

    .line 81
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    const p2, 0x7f090064

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->descriptionView:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f0901c7

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->viewPager:Lcom/sherdle/universal/attachmentviewer/widgets/HackyViewPager;

    .line 83
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f09015b

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    if-eqz p3, :cond_0

    const-string p1, "loader"

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, p1, p3}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->loadMediaToView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/model/Attachment;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 93
    iget-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->descriptionView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->scrollGalleryView:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->thumbnailsHidden()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    const p2, 0x7f09019e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090011

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090019

    if-eq v0, v1, :cond_0

    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 161
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$3;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return v2

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    .line 158
    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Helper;->download(Landroid/app/Activity;Ljava/lang/String;)V

    return v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "loader"

    .line 147
    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "zoom"

    .line 148
    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->photoViewAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMediaLoader(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->mMediaLoader:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    return-void
.end method
