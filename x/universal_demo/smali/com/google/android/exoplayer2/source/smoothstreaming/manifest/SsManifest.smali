.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;,
        Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
    }
.end annotation


# static fields
.field public static final UNSET_LOOKAHEAD:I = -0x1


# instance fields
.field public final durationUs:J

.field public final dvrWindowLengthUs:J

.field public final isLive:Z

.field public final lookAheadCount:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

.field public final streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;


# direct methods
.method public constructor <init>(IIJJJIZLcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;)V
    .locals 17

    move-object/from16 v0, p0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    .line 99
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->majorVersion:I

    move/from16 v1, p2

    .line 100
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->minorVersion:I

    move/from16 v1, p9

    .line 101
    iput v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->lookAheadCount:I

    move/from16 v1, p10

    .line 102
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    move-object/from16 v1, p11

    .line 103
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->protectionElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    move-object/from16 v1, p12

    .line 104
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    const-wide/16 v1, 0x0

    cmp-long v5, p7, v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_0

    move-wide v3, v9

    goto :goto_0

    :cond_0
    const-wide/32 v5, 0xf4240

    move-wide/from16 v3, p7

    move-wide/from16 v7, p3

    .line 106
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    :goto_0
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v5, p5, v1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v13, 0xf4240

    move-wide/from16 v11, p5

    move-wide/from16 v15, p3

    .line 108
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v9

    :goto_1
    iput-wide v9, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    return-void
.end method
