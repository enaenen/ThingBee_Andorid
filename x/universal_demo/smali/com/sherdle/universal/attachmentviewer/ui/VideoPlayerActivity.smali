.class public Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;
.super Landroid/app/Activity;
.source "VideoPlayerActivity.java"


# static fields
.field private static URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    sget-object v1, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b001d

    .line 37
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->setContentView(I)V

    const v0, 0x7f0901c4

    .line 38
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 39
    new-instance v1, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity$1;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/VideoPlayerActivity;Landroid/widget/VideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method
