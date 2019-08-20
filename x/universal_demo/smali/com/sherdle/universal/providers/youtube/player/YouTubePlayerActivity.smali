.class public Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "YouTubePlayerActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;


# static fields
.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final LANDSCAPE_ORIENTATION:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final PORTRAIT_ORIENTATION:I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final RECOVERY_DIALOG_REQUEST:I = 0x1

.field private static final TOAST:Z = false


# instance fields
.field public GOOGLE_API_KEY:Ljava/lang/String;

.field private mAutoRotation:Z

.field private mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

.field private mPlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

.field private mVideoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    sput v0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->PORTRAIT_ORIENTATION:I

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    :goto_1
    sput v0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->LANDSCAPE_ORIENTATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mVideoId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mAutoRotation:Z

    return-void
.end method

.method public static getYouTubeVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 203
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "v"

    .line 204
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    invoke-static {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->parseYoutubeVideoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseYoutubeVideoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "http"

    .line 218
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "^.*((youtu.be\\/)|(v\\/)|(\\/u\\/w\\/)|(embed\\/)|(watch\\?))\\??v?=?([^#\\&\\?]*).*"

    const/4 v1, 0x2

    .line 224
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 230
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private startVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5

    const-string v0, "v"

    .line 249
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 259
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 264
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->GOOGLE_API_KEY:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/google/android/youtube/player/YouTubePlayer$Provider;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    :cond_0
    return-void
.end method

.method public onAdStarted()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 150
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    invoke-interface {p1, v1}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    goto :goto_0

    .line 154
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->setFullscreen(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->GOOGLE_API_KEY:Ljava/lang/String;

    .line 86
    new-instance p1, Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-direct {p1, p0}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 87
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->GOOGLE_API_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mVideoId:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mAutoRotation:Z

    .line 93
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayerView:Lcom/google/android/youtube/player/YouTubePlayerView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
    .locals 1

    .line 242
    sget-object v0, Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;->NOT_PLAYABLE:Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://www.youtube.com/watch?v="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 244
    invoke-direct {p0, p0, p1}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->startVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onFullscreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 170
    sget p1, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->LANDSCAPE_ORIENTATION:I

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 172
    :cond_0
    sget p1, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->PORTRAIT_ORIENTATION:I

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 3

    .line 123
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p2, p0, v0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "There was an error initializing the YouTubePlayer (%1$s)"

    .line 126
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 128
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 126
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0

    .line 101
    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mPlayer:Lcom/google/android/youtube/player/YouTubePlayer;

    .line 102
    invoke-interface {p2, p0}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    .line 103
    invoke-interface {p2, p0}, Lcom/google/android/youtube/player/YouTubePlayer;->setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    .line 105
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mAutoRotation:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 106
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 111
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    :goto_0
    if-nez p3, :cond_1

    .line 117
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->mVideoId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-ne p1, v3, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 182
    invoke-virtual {p1, v1, v2, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2

    :cond_0
    const/16 v3, 0x19

    if-ne p1, v3, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/YouTubePlayerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, -0x1

    .line 190
    invoke-virtual {p1, v1, p2, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v2

    .line 196
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLoaded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoading()V
    .locals 0

    return-void
.end method

.method public onVideoEnded()V
    .locals 0

    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    return-void
.end method
