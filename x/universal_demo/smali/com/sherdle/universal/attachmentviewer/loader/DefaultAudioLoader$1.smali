.class Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;
.super Ljava/lang/Object;
.source "DefaultAudioLoader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;->loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

.field final synthetic val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 38
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/model/Attachment;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/model/Attachment;->getDescription()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;

    invoke-virtual {v2}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;->getAttachment()Lcom/sherdle/universal/attachmentviewer/model/Attachment;

    move-result-object v2

    check-cast v2, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;

    invoke-virtual {v2}, Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;->access$000(Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
