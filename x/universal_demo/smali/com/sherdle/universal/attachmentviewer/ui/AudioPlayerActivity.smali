.class public Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;
    }
.end annotation


# static fields
.field public static final SERVICE:Ljava/lang/String; = "service"

.field private static TAG:Ljava/lang/String; = "PlayQueueActivity"

.field static final UPDATE_INTERVAL:I = 0xfa

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

.field private MusicServiceIntent:Landroid/content/Intent;

.field private handler:Landroid/os/Handler;

.field private mediaController:Landroid/widget/MediaController;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$MusicServiceServiceConnection;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;)V

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->url:Ljava/lang/String;

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Lcom/sherdle/universal/attachmentviewer/MusicService;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;Lcom/sherdle/universal/attachmentviewer/MusicService;)Lcom/sherdle/universal/attachmentviewer/MusicService;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Landroid/content/Intent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicServiceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)Landroid/widget/MediaController;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->mediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "service"

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public connectMediaControl()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 140
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->mediaController:Landroid/widget/MediaController;

    const v1, 0x7f0900ee

    invoke-virtual {p0, v1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity$1;-><init>(Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Lcom/sherdle/universal/util/ThemeUtils;->setTheme(Landroid/app/Activity;)V

    const p1, 0x7f0b001e

    .line 56
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->setContentView(I)V

    const p1, 0x7f0901a6

    .line 58
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    .line 59
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->mediaController:Landroid/widget/MediaController;

    .line 63
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->url:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "service"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->title:Ljava/lang/String;

    const p1, 0x7f09010b

    .line 65
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    .line 85
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 86
    invoke-static {p1, p0}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 70
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090011

    if-eq v0, v1, :cond_0

    .line 79
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->url:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sherdle/universal/util/Helper;->download(Landroid/app/Activity;Ljava/lang/String;)V

    return v2

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->finish()V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 110
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 92
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicServiceIntent:Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->pause()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/ui/AudioPlayerActivity;->MusicService:Lcom/sherdle/universal/attachmentviewer/MusicService;

    invoke-virtual {v0}, Lcom/sherdle/universal/attachmentviewer/MusicService;->start()V

    return-void
.end method
