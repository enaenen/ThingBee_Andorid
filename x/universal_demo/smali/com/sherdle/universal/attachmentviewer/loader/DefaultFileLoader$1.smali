.class Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;
.super Ljava/lang/Object;
.source "DefaultFileLoader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;->loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;

.field final synthetic val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;->val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    iput-object p3, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;->val$context:Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultFileLoader$1;->val$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Helper;->download(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
