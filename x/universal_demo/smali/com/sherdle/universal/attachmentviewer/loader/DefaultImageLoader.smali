.class public Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;
.super Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
.source "DefaultImageLoader.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mId:I


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/Attachment;)V

    .line 26
    iput p2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mId:I

    return-void
.end method

.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/Attachment;)V

    .line 31
    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private loadBitmap(Landroid/content/Context;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public isImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p4, :cond_0

    .line 44
    invoke-interface {p4}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    :cond_0
    return-void
.end method

.method public loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->loadBitmap(Landroid/content/Context;)V

    .line 51
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_0

    .line 53
    invoke-interface {p3}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    :cond_0
    return-void
.end method
