.class Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;
.super Ljava/lang/Object;
.source "AttachmentFragment.java"

# interfaces
.implements Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->loadMediaToView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/view/View;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->access$000(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    move-result-object v0

    instance-of v0, v0, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->access$000(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;

    move-result-object v0

    instance-of v0, v0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultImageLoader;

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->access$100(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/os/Bundle;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment$1;->val$rootView:Landroid/view/View;

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
