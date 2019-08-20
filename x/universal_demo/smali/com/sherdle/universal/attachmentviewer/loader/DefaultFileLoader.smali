.class public Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;
.super Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
.source "DefaultFileLoader.java"


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/Attachment;)V

    return-void
.end method


# virtual methods
.method public isImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object p2

    check-cast p2, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {p2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f090124

    .line 35
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;-><init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f0800b0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    invoke-interface {p4}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method

.method public loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 0

    const p1, 0x7f0800b0

    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    invoke-interface {p3}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method
