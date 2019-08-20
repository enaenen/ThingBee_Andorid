.class public Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;
.super Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;
.source "DefaultAudioLoader.java"


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/model/MediaAttachment;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader;-><init>(Lcom/sherdle/universal/attachmentviewer/model/Attachment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;->playAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private playAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-static {p1, p2, p3}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadMedia(Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;Landroid/widget/ImageView;Landroid/view/View;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 2

    const v0, 0x7f0800f8

    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader$1;-><init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultAudioLoader;Lcom/sherdle/universal/attachmentviewer/ui/AttachmentFragment;)V

    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090124

    .line 45
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-interface {p4}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method

.method public loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 0

    const p1, 0x7f0800a5

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    invoke-interface {p3}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method
