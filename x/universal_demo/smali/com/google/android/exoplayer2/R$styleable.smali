.class public final Lcom/google/android/exoplayer2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_resize_mode:I = 0x0

.field public static final DefaultTimeBar:[I

.field public static final DefaultTimeBar_ad_marker_color:I = 0x0

.field public static final DefaultTimeBar_ad_marker_width:I = 0x1

.field public static final DefaultTimeBar_bar_height:I = 0x2

.field public static final DefaultTimeBar_buffered_color:I = 0x3

.field public static final DefaultTimeBar_played_color:I = 0x4

.field public static final DefaultTimeBar_scrubber_color:I = 0x5

.field public static final DefaultTimeBar_scrubber_disabled_size:I = 0x6

.field public static final DefaultTimeBar_scrubber_dragged_size:I = 0x7

.field public static final DefaultTimeBar_scrubber_enabled_size:I = 0x8

.field public static final DefaultTimeBar_touch_target_height:I = 0x9

.field public static final DefaultTimeBar_unplayed_color:I = 0xa

.field public static final PlaybackControlView:[I

.field public static final PlaybackControlView_controller_layout_id:I = 0x0

.field public static final PlaybackControlView_fastforward_increment:I = 0x1

.field public static final PlaybackControlView_rewind_increment:I = 0x2

.field public static final PlaybackControlView_show_timeout:I = 0x3

.field public static final SimpleExoPlayerView:[I

.field public static final SimpleExoPlayerView_controller_layout_id:I = 0x0

.field public static final SimpleExoPlayerView_default_artwork:I = 0x1

.field public static final SimpleExoPlayerView_fastforward_increment:I = 0x2

.field public static final SimpleExoPlayerView_hide_on_touch:I = 0x3

.field public static final SimpleExoPlayerView_player_layout_id:I = 0x4

.field public static final SimpleExoPlayerView_resize_mode:I = 0x5

.field public static final SimpleExoPlayerView_rewind_increment:I = 0x6

.field public static final SimpleExoPlayerView_show_timeout:I = 0x7

.field public static final SimpleExoPlayerView_surface_type:I = 0x8

.field public static final SimpleExoPlayerView_use_artwork:I = 0x9

.field public static final SimpleExoPlayerView_use_controller:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f040131

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->AspectRatioFrameLayout:[I

    const/16 v0, 0xb

    .line 99
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/R$styleable;->DefaultTimeBar:[I

    const/4 v1, 0x4

    .line 111
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/R$styleable;->PlaybackControlView:[I

    .line 116
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplayer2/R$styleable;->SimpleExoPlayerView:[I

    return-void

    :array_0
    .array-data 4
        0x7f040025
        0x7f040026
        0x7f040046
        0x7f040050
        0x7f040122
        0x7f040138
        0x7f040139
        0x7f04013a
        0x7f04013b
        0x7f040199
        0x7f0401a4
    .end array-data

    :array_1
    .array-data 4
        0x7f040090
        0x7f0400ba
        0x7f040133
        0x7f040146
    .end array-data

    :array_2
    .array-data 4
        0x7f040090
        0x7f040098
        0x7f0400ba
        0x7f0400cb
        0x7f040123
        0x7f040131
        0x7f040133
        0x7f040146
        0x7f04015b
        0x7f0401a9
        0x7f0401aa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
