.class public final Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public volatile bufferedPositionUs:J

.field public final periodIndex:I

.field public volatile positionUs:J

.field public final startPositionUs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    .line 59
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    .line 60
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 61
    iput-wide p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .locals 3

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    .line 66
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 67
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    return-object v0
.end method
