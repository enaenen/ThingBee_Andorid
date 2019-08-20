.class Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->connectMediaControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$600(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;->this$0:Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->access$600(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    return-void
.end method
