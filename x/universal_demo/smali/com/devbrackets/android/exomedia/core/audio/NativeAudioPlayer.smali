.class public Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;
.super Ljava/lang/Object;
.source "NativeAudioPlayer.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/AudioPlayerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer$InternalListeners;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMediaPlayer"


# instance fields
.field protected final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected currentBufferPercent:I

.field protected internalListeners:Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

.field protected final mediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected requestedSeek:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->internalListeners:Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->currentBufferPercent:I

    .line 65
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->context:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 68
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->internalListeners:Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer$InternalListeners;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->currentBufferPercent:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onMediaPrepared()V
    .locals 5

    .line 244
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 245
    iget-wide v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public restart()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 151
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 153
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public seekTo(J)V
    .locals 1
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 112
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const-wide/16 p1, 0x0

    .line 114
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    goto :goto_0

    .line 116
    :cond_0
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    :goto_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setDataSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/source/MediaSource;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    .line 79
    :try_start_0
    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->requestedSeek:J

    .line 80
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "NativeMediaPlayer"

    const-string v0, "MediaPlayer: error setting data source"

    .line 82
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setDrmCallback(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 1

    .line 233
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    .line 235
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 236
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 237
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 238
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 239
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setPlaybackSpeed(F)Z
    .locals 2

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 195
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 196
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 198
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTrack(Lcom/devbrackets/android/exomedia/ExoMedia$RendererType;I)V
    .locals 0

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

    .line 107
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 129
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->listenerMux:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->setNotifiedCompleted(Z)V

    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/audio/NativeAudioPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public trackSelectionAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
