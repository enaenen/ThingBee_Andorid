.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoView;
.super Landroid/widget/RelativeLayout;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoView"


# instance fields
.field protected audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected audioManager:Landroid/media/AudioManager;

.field protected deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

.field protected handleAudioFocus:Z

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

.field protected overriddenDuration:J

.field protected overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

.field protected overridePosition:Z

.field protected positionOffset:J

.field protected previewImageView:Landroid/widget/ImageView;

.field protected releaseOnDetachFromWindow:Z

.field protected videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected videoUri:Landroid/net/Uri;

.field protected videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overridePosition:Z

    .line 93
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 95
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->releaseOnDetachFromWindow:Z

    .line 99
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->handleAudioFocus:Z

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 86
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overridePosition:Z

    .line 93
    new-instance v0, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 95
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->releaseOnDetachFromWindow:Z

    .line 99
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->handleAudioFocus:Z

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance p3, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {p3}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 86
    new-instance p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {p3, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    const-wide/16 v0, -0x1

    .line 90
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    const/4 p3, 0x0

    .line 92
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overridePosition:Z

    .line 93
    new-instance p3, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {p3}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 95
    new-instance p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p3, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    const/4 p3, 0x1

    .line 98
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->releaseOnDetachFromWindow:Z

    .line 99
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->handleAudioFocus:Z

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    new-instance p3, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {p3}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    .line 86
    new-instance p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-direct {p3, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    const-wide/16 p3, 0x0

    .line 89
    iput-wide p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    const-wide/16 p3, -0x1

    .line 90
    iput-wide p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    const/4 p3, 0x0

    .line 92
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overridePosition:Z

    .line 93
    new-instance p3, Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-direct {p3}, Lcom/devbrackets/android/exomedia/util/StopWatch;-><init>()V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    .line 95
    new-instance p3, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p3, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    const/4 p3, 0x1

    .line 98
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->releaseOnDetachFromWindow:Z

    .line 99
    iput-boolean p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->handleAudioFocus:Z

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 6

    .line 482
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overridePosition:Z

    if-eqz v0, :cond_0

    .line 483
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/util/StopWatch;->getTimeInt()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    return-wide v4

    .line 486
    :cond_0
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getCurrentPosition()J

    move-result-wide v2

    add-long v4, v0, v2

    return-wide v4
.end method

.method public getDuration()J
    .locals 5

    .line 456
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 457
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    return-wide v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewImageView()Landroid/widget/ImageView;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getVideoControls()Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    return-object v0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getVideoViewApiImplementation(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->supportsExoPlayer(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 761
    iget p1, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->apiImplLegacyResourceId:I

    goto :goto_0

    :cond_0
    iget p1, p2, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->apiImplResourceId:I

    :goto_0
    return p1
.end method

.method protected inflateVideoView(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 733
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_video_view_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 734
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->video_view_api_impl_stub:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getVideoViewApiImplementation(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 737
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method protected initView(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V
    .locals 0
    .param p2    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 694
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->inflateVideoView(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V

    .line 696
    sget p1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_video_preview_image:I

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    .line 697
    sget p1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_video_view:I

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    .line 699
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    .line 700
    new-instance p1, Lcom/devbrackets/android/exomedia/core/ListenerMux;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    invoke-direct {p1, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 702
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    iget-object p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-interface {p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 127
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->releaseOnDetachFromWindow:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->release()V

    :cond_0
    return-void
.end method

.method protected onPlaybackEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->stopPlayback(Z)V

    return-void
.end method

.method public overrideDuration(J)V
    .locals 0

    .line 471
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenDuration:J

    return-void
.end method

.method public overridePosition(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->start()V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->stop()V

    .line 520
    :goto_0
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overridePosition:Z

    return-void
.end method

.method public pause()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->abandonFocus()Z

    .line 400
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->pause()V

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 403
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    :cond_0
    return-void
.end method

.method protected postInit(Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V
    .locals 2
    .param p1    # Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 712
    iget-boolean v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->useDefaultControls:Z

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->deviceUtil:Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->isDeviceTV(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 716
    :cond_1
    iget-object v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->scaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->scaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V

    .line 720
    :cond_2
    iget-object v0, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->measureBasedOnAspectRatio:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 721
    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;->measureBasedOnAspectRatio:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setMeasureBasedOnAspectRatioEnabled(Z)V

    :cond_3
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    .line 159
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->stopPlayback()V

    .line 160
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->stop()V

    .line 162
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->stopPlayback()V

    const/4 v0, 0x0

    .line 352
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public restart()Z
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->restart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->showLoading(Z)V

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public restartOverridePosition()V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->overriddenPositionStopWatch:Lcom/devbrackets/android/exomedia/util/StopWatch;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/StopWatch;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->showLoading(Z)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->seekTo(J)V

    return-void
.end method

.method public setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eq v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 224
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    .line 225
    invoke-virtual {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setVideoView(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    .line 226
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->addView(Landroid/view/View;)V

    .line 230
    :cond_1
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$TouchListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 320
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setHandleAudioFocus(Z)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->abandonFocus()Z

    .line 343
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->handleAudioFocus:Z

    return-void
.end method

.method public setId3MetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 654
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V

    return-void
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setMeasureBasedOnAspectRatioEnabled(Z)V

    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 627
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 618
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 645
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 609
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 636
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOnVideoSizedChangedListener(Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 663
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->muxNotifier:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;

    iput-object p1, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$MuxNotifier;->videoSizeChangedListener:Lcom/devbrackets/android/exomedia/listener/OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setPlaybackSpeed(F)Z

    move-result p1

    return p1
.end method

.method public setPositionOffset(J)V
    .locals 0

    .line 496
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->positionOffset:J

    return-void
.end method

.method public setPreviewImage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 182
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPreviewImage(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 204
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setReleaseOnDetachFromWindow(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->releaseOnDetachFromWindow:Z

    return-void
.end method

.method public setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 582
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V

    return-void
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 297
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .line 600
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoRotation(IZ)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoUri:Landroid/net/Uri;

    .line 268
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoUri(Landroid/net/Uri;)V

    .line 270
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoUri:Landroid/net/Uri;

    .line 283
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoUri(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 285
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method public setVolume(F)Z
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 331
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVolume(F)Z

    move-result p1

    return p1
.end method

.method protected setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 674
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 678
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioManager:Landroid/media/AudioManager;

    .line 680
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 681
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->initView(Landroid/content/Context;Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V

    .line 682
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->postInit(Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AttributeContainer;)V

    return-void
.end method

.method public showControls()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    .line 242
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->start()V

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 390
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    :cond_1
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    const/4 v0, 0x1

    .line 412
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->stopPlayback(Z)V

    return-void
.end method

.method protected stopPlayback(Z)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->abandonFocus()Z

    .line 782
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->stopPlayback(Z)V

    const/4 p1, 0x0

    .line 783
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 785
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->audioFocusHelper:Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView$AudioFocusHelper;->abandonFocus()Z

    .line 440
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->suspend()V

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setKeepScreenOn(Z)V

    .line 443
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlaybackState(Z)V

    :cond_0
    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->trackSelectionAvailable()Z

    move-result v0

    return v0
.end method
