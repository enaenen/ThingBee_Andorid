.class public Lcom/devbrackets/android/exomedia/core/ListenerMux;
.super Ljava/lang/Object;
.source "ListenerMux.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
.implements Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
    }
.end annotation


# static fields
.field private static final COMPLETED_DURATION_LEEWAY:J = 0x3e8L


# instance fields
.field private bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private clearRequested:Z

.field private clearableSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;",
            ">;"
        }
    .end annotation
.end field

.field private completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private delayedHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private notifiedCompleted:Z

.field private notifiedPrepared:Z

.field private preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;)V
    .locals 2
    .param p1    # Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedPrepared:Z

    .line 72
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedCompleted:Z

    .line 73
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearRequested:Z

    .line 76
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    return-void
.end method

.method static synthetic access$000(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->performPreparedHandlerNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/core/ListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    return-object p0
.end method

.method private notifyCompletionListener()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->shouldNotifyCompletion(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedCompleted:Z

    .line 297
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$2;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyErrorListener(Ljava/lang/Exception;)Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/listener/OnErrorListener;->onError(Ljava/lang/Exception;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyPreparedListener()V
    .locals 2

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedPrepared:Z

    .line 274
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/ListenerMux$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$1;-><init>(Lcom/devbrackets/android/exomedia/core/ListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performPreparedHandlerNotification()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onPrepared()V

    .line 285
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;->onPrepared()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearSurfaceWhenReady(Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;)V
    .locals 1
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearRequested:Z

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public isPrepared()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onBufferUpdated(I)V

    .line 156
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 81
    invoke-virtual {p0, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->onBufferingUpdate(I)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;->onCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onMediaPlaybackEnded()V

    .line 111
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onExoPlayerError(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Ljava/lang/Exception;)V

    .line 112
    invoke-direct {p0, p2}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifyErrorListener(Ljava/lang/Exception;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 93
    new-instance p1, Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;

    invoke-direct {p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;-><init>(II)V

    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifyErrorListener(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifyPreparedListener()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onSeekComplete()V

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onMediaPlaybackEnded()V

    .line 120
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedCompleted:Z

    if-nez v1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifyCompletionListener()V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 123
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedPrepared:Z

    if-nez v1, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifyPreparedListener()V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {p1, v1}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onPreviewImageStateChanged(Z)V

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 133
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearRequested:Z

    if-eqz p1, :cond_3

    .line 134
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearRequested:Z

    .line 135
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;

    if-eqz p1, :cond_3

    .line 138
    invoke-interface {p1}, Lcom/devbrackets/android/exomedia/core/video/ClearableSurface;->clearSurface()V

    .line 139
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->clearableSurfaceRef:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 235
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->metadataListener:Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    return-void
.end method

.method public setNotifiedCompleted(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedCompleted:Z

    return-void
.end method

.method public setNotifiedPrepared(Z)V
    .locals 1

    .line 244
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->notifiedPrepared:Z

    .line 245
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/devbrackets/android/exomedia/core/ListenerMux$Notifier;->onPreviewImageStateChanged(Z)V

    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 208
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 199
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/ListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    return-void
.end method
