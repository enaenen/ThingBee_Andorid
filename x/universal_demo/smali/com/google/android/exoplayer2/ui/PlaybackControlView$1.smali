.class final Lcom/google/android/exoplayer2/ui/PlaybackControlView$1;
.super Ljava/lang/Object;
.source "PlaybackControlView.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlaybackControlView$ControlDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlaybackControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchSeekTo(Lcom/google/android/exoplayer2/ExoPlayer;IJ)Z
    .locals 0

    .line 208
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayer;Z)Z
    .locals 0

    .line 202
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    const/4 p1, 0x1

    return p1
.end method
