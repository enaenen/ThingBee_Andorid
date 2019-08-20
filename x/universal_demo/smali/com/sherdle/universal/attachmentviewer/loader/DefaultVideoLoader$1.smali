.class Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;
.super Ljava/lang/Object;
.source "DefaultVideoLoader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;->loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;

.field final synthetic val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;->val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;->val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
