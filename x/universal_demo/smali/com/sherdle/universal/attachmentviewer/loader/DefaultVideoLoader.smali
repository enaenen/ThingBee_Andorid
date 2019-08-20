.class public Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;
.super Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
.source "DefaultVideoLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    .locals 0

    .line 29
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
    .locals 4

    .line 39
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;

    invoke-direct {v0, p0, p2}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;-><init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;-><init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V

    const p1, 0x7f0800f9

    .line 48
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090124

    .line 51
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-interface {p4}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method

.method public loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 0

    const p1, 0x7f08009c

    .line 58
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    invoke-interface {p3}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method
