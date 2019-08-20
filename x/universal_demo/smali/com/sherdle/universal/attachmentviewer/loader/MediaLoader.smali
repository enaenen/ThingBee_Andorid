.class public abstract Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
.super Ljava/lang/Object;
.source "MediaLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;
    }
.end annotation


# instance fields
.field private attachment:Lcom/sherdle/universal/attachmentviewer/model/Attachment;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/Attachment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->attachment:Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    return-void
.end method


# virtual methods
.method public getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;->attachment:Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    return-object v0
.end method

.method public abstract isImage()Z
.end method

.method public abstract loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
.end method

.method public abstract loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
.end method
