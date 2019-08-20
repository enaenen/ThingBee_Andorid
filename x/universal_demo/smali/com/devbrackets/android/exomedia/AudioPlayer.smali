.class public Lcom/devbrackets/android/exomedia/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;
    }
.end annotation


# instance fields
.field protected audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected overriddenDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    new-instance v0, Lcom/devbrackets/android/exomedia/util/DeviceUtil;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/devbrackets/android/exomedia/AudioPlayer;-><init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/util/DeviceUtil;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/devbrackets/android/exomedia/util/DeviceUtil;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/util/DeviceUtil;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->overriddenDuration:J

    .line 64
    invoke-virtual {p2, p1}, Lcom/devbrackets/android/exomedia/util/DeviceUtil;->supportsExoPlayer(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;

    invoke-direct {p2, p1}, Lcom/devbrackets/android/exomedia/core/audio/ExoAudioPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;

    invoke-direct {p2, p1}, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/devbrackets/android/exomedia/AudioPlayer;->init(Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;)V

    return-void
.end method

.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->overriddenDuration:J

    .line 68
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/AudioPlayer;->init(Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;)V

    return-void
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/AudioPlayer;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/AudioPlayer;->onPlaybackEnded()V

    return-void
.end method

.method private onPlaybackEnded()V
    .locals 0

    .line 382
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/AudioPlayer;->pause()V

    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->getAudioSessionId()I

    move-result v0

    return v0
.end method

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

    .line 320
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->getBufferedPercent()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 5

    .line 251
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->overriddenDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 252
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->overriddenDuration:J

    return-wide v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method protected init(Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;)V
    .locals 3

    .line 72
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    .line 74
    new-instance v0, Lcom/devbrackets/android/exomedia/core/ListenerMux;

    new-instance v1, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/devbrackets/android/exomedia/AudioPlayer$MuxNotifier;-><init>(Lcom/devbrackets/android/exomedia/AudioPlayer;Lcom/devbrackets/android/exomedia/AudioPlayer$1;)V

    invoke-direct {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 75
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-interface {p1, v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public overrideDuration(J)V
    .locals 0

    .line 266
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->overriddenDuration:J

    return-void
.end method

.method public pause()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/AudioPlayer;->stopPlayback()V

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, v0}, Lcom/devbrackets/android/exomedia/AudioPlayer;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 191
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->reset()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->seekTo(J)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setDataSource(Landroid/net/Uri;)V

    const-wide/16 v0, -0x1

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/AudioPlayer;->overrideDuration(J)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    const-wide/16 p1, -0x1

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/AudioPlayer;->overrideDuration(J)V

    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V

    return-void
.end method

.method public setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 374
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V

    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 347
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 338
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 365
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 329
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 356
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setPlaybackSpeed(F)Z

    move-result p1

    return p1
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 162
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->start()V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->stopPlayback()V

    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/AudioPlayer;->audioPlayerImpl:Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;->trackSelectionAvailable()Z

    move-result v0

    return v0
.end method
