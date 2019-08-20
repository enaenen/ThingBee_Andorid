.class public Lcom/sherdle/universal/providers/radio/ui/RadioFragment;
.super Landroid/support/v4/app/Fragment;
.source "RadioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sherdle/universal/inherit/PermissionsFragment;
.implements Lcom/sherdle/universal/inherit/CollapseControllingFragment;
.implements Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;


# instance fields
.field private albumArtView:Landroid/widget/ImageView;

.field private arguments:[Ljava/lang/String;

.field private audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

.field private buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

.field private layout:Landroid/widget/RelativeLayout;

.field private loadingIndicator:Landroid/widget/ProgressBar;

.field private mAct:Landroid/app/Activity;

.field private radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

.field private urlToPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->urlToPlay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)[Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->arguments:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method private initializeUIElements()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09013b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    .line 182
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 183
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->albumArtView:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0901cc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cleveroad/audiovisualization/AudioVisualization;

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    .line 188
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

    .line 189
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateButtons()V

    return-void
.end method

.method private isPlaying()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeSnackbar(I)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 319
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 320
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private startStopPlaying()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->urlToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->playOrPause(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateButtons()V

    return-void
.end method


# virtual methods
.method public dynamicToolbarElevation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->mAct:Landroid/app/Activity;

    .line 80
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->isOnlineShowDialog(Landroid/app/Activity;)Z

    .line 83
    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->with()Lcom/sherdle/universal/providers/radio/player/RadioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    .line 85
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    new-instance p1, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;

    invoke-direct {p1, p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment$1;-><init>(Lcom/sherdle/universal/providers/radio/ui/RadioFragment;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 102
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getAudioSessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->onAudioSessionId(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onAudioSessionId(Ljava/lang/Integer;)V
    .locals 1

    .line 133
    sget-boolean v0, Lcom/sherdle/universal/Config;->VISUALIZER_ENABLED:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/cleveroad/audiovisualization/DbmHandler$Factory;->newVisualizerHandler(Landroid/content/Context;I)Lcom/cleveroad/audiovisualization/VisualizerDbmHandler;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    invoke-interface {v0, p1}, Lcom/cleveroad/audiovisualization/AudioVisualization;->linkTo(Lcom/cleveroad/audiovisualization/DbmHandler;)V

    .line 136
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    invoke-interface {p1}, Lcom/cleveroad/audiovisualization/AudioVisualization;->onResume()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->urlToPlay:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->startStopPlaying()V

    .line 227
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->mAct:Landroid/app/Activity;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 228
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    const p1, 0x7f0f010f

    .line 230
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->makeSnackbar(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0065

    .line 234
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->makeSnackbar(I)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->startStopPlaying()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0b0058

    .line 59
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    .line 61
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->initializeUIElements()V

    .line 64
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->arguments:[Ljava/lang/String;

    .line 67
    sget-boolean p1, Lcom/sherdle/universal/Config;->VISUALIZER_ENABLED:Z

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->albumArtView:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->albumArtView:Landroid/widget/ImageView;

    sget p2, Lcom/sherdle/universal/Config;->BACKGROUND_IMAGE_ID:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->unbind(Landroid/content/Context;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/AudioVisualization;->release()V

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x558d2b16

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x360322ca

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PlaybackStatus_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "PlaybackStatus_LOADING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0x7f0f0064

    .line 119
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->makeSnackbar(I)V

    goto :goto_2

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_2
    const-string v0, "PlaybackStatus_LOADING"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateButtons()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMetaDataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getArtist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 299
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateMediaInfoFromBackground(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 255
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/AudioVisualization;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateButtons()V

    .line 173
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->radioManager:Lcom/sherdle/universal/providers/radio/player/RadioManager;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->bind(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->audioVisualization:Lcom/cleveroad/audiovisualization/AudioVisualization;

    invoke-interface {v0}, Lcom/cleveroad/audiovisualization/AudioVisualization;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 142
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 143
    invoke-static {p0}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->registerAsListener(Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->unregisterAsListener(Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;)V

    .line 149
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public requiredPermissions()[Ljava/lang/String;
    .locals 4

    .line 287
    sget-boolean v0, Lcom/sherdle/universal/Config;->VISUALIZER_ENABLED:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 288
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v0, v2

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    return-object v0

    .line 290
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    return-object v0
.end method

.method public supportsCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateButtons()V
    .locals 6

    .line 195
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->isPlaying()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f080088

    const/4 v3, 0x0

    const v4, 0x7f090025

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->loadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 214
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0, v3, v3}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->updateMediaInfoFromBackground(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->urlToPlay:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->urlToPlay:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getStreamUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 204
    :cond_2
    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getMetaData()Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 205
    invoke-static {}, Lcom/sherdle/universal/providers/radio/player/RadioManager;->getService()Lcom/sherdle/universal/providers/radio/player/RadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getMetaData()Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->onMetaDataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;Landroid/graphics/Bitmap;)V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->buttonPlayPause:Landroid/support/design/widget/FloatingActionButton;

    const v2, 0x7f080087

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public updateMediaInfoFromBackground(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->layout:Landroid/widget/RelativeLayout;

    const v2, 0x7f09010a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v2, 0x8

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 p1, 0x0

    .line 268
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 271
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/sherdle/universal/Config;->VISUALIZER_ENABLED:Z

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    .line 277
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->albumArtView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 279
    :cond_3
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/ui/RadioFragment;->albumArtView:Landroid/widget/ImageView;

    sget p2, Lcom/sherdle/universal/Config;->BACKGROUND_IMAGE_ID:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    return-void
.end method
