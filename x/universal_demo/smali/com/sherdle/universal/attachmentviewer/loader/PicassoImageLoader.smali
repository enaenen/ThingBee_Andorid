.class public Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;
.super Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
.source "PicassoImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/Attachment;)V

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

    .line 34
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object p3

    check-cast p3, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {p3}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance p3, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;

    invoke-direct {p3, p4}, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;-><init>(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V

    .line 36
    invoke-virtual {p1, p2, p3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    .line 42
    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 43
    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const/16 v0, 0x64

    .line 45
    invoke-virtual {p1, v0, v0}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v0, 0x7f0800f7

    .line 46
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerInside()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v0, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;

    invoke-direct {v0, p3}, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;-><init>(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V

    .line 48
    invoke-virtual {p1, p2, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method
