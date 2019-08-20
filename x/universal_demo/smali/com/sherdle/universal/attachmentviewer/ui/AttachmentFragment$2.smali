.class Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;
.super Ljava/lang/Object;
.source "AttachmentFragment.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->createViewAttacher(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutsidePhotoTap()V
    .locals 0

    return-void
.end method

.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->access$200(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->access$300(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$2;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-static {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->access$400(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V

    :goto_0
    return-void
.end method
