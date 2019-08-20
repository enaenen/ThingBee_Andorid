.class public Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;
.super Landroid/app/Service;
.source "PlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;,
        Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;,
        Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;
    }
.end annotation


# static fields
.field static final ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "sound_cloud_player_becoming_noisy"

.field static final ACTION_CLEAR_NOTIFICATION:Ljava/lang/String; = "sound_cloud_player_clear"

.field static final ACTION_NEXT_TRACK:Ljava/lang/String; = "sound_cloud_player_next"

.field private static final ACTION_PAUSE_PLAYER:Ljava/lang/String; = "sound_cloud_player_resume"

.field private static final ACTION_PLAY:Ljava/lang/String; = "sound_cloud_play"

.field static final ACTION_PREVIOUS_TRACK:Ljava/lang/String; = "sound_cloud_player_previous"

.field private static final ACTION_RESUME_PLAYER:Ljava/lang/String; = "sound_cloud_player_pause"

.field private static final ACTION_SEEK_TO:Ljava/lang/String; = "sound_cloud_player_seek_to"

.field private static final ACTION_STOP_PLAYER:Ljava/lang/String; = "sound_cloud_player_stop"

.field static final ACTION_TOGGLE_PLAYBACK:Ljava/lang/String; = "sound_cloud_toggle_playback"

.field private static final BUNDLE_KEY_SOUND_CLOUD_CLIENT_ID:Ljava/lang/String; = "sound_cloud_player_bundle_key_client_id"

.field private static final BUNDLE_KEY_SOUND_CLOUD_TRACK:Ljava/lang/String; = "sound_cloud_player_bundle_key_track_url"

.field private static final BUNDLE_KEY_SOUND_CLOUD_TRACK_POSITION:Ljava/lang/String; = "sound_cloud_player_bundle_key_seek_to"

.field private static final IDLE_PERIOD_MILLI:I = 0xea60

.field private static final MESSAGE_DELAY_MILLI:I = 0x64

.field private static final SOUND_CLOUD_CLIENT_ID_PARAM:Ljava/lang/String; = "?client_id="

.field private static final TAG:Ljava/lang/String; = "PlaybackService"

.field private static final THREAD_NAME:Ljava/lang/String;

.field private static final WHAT_CLEAR_PLAYER:I = 0x9

.field private static final WHAT_NEXT_TRACK:I = 0x3

.field private static final WHAT_PAUSE_PLAYER:I = 0x1

.field private static final WHAT_PLAY:I = 0x0

.field private static final WHAT_PREVIOUS_TRACK:I = 0x4

.field private static final WHAT_RELEASE_PLAYER:I = 0x7

.field private static final WHAT_RESUME_PLAYER:I = 0x2

.field private static final WHAT_SEEK_TO:I = 0x5

.field private static final WHAT_STOP_PLAYER:I = 0x6

.field private static final WIFI_LOCK_TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountDown:Landroid/os/CountDownTimer;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasAlreadyPlayed:Z

.field private mIsPaused:Z

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

.field private mNotificationManager:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

.field private mPlayerHandler:Landroid/os/Handler;

.field private mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

.field private mSoundCloundClientId:Ljava/lang/String;

.field private mStopServiceHandler:Landroid/os/Handler;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wifi_lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->WIFI_LOCK_TAG:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "player_thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->previousTrack()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->seekToPosition(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Landroid/media/MediaPlayer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->playTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->pause()V

    return-void
.end method

.method static synthetic access$700(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->resume()V

    return-void
.end method

.method static synthetic access$800(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stopPlayer()V

    return-void
.end method

.method static synthetic access$900(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->nextTrack()V

    return-void
.end method

.method private gotoIdleState()V
    .locals 4

    .line 750
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mStopServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mStopServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private initializeMediaPlayer()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 631
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 632
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 633
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 634
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 635
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 636
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private nextTrack()V
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->next()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->playTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    return-void
.end method

.method private pause()V
    .locals 2

    .line 572
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHasAlreadyPlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    .line 574
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simple_sc_listener_action_on_track_paused"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 580
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->updateNotification()V

    .line 582
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setPlaybackState(I)V

    .line 583
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->pauseTimer()V

    :cond_0
    return-void
.end method

.method public static pause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 288
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound_cloud_player_resume"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sound_cloud_player_bundle_key_client_id"

    .line 290
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private pauseTimer()V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 791
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 2

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound_cloud_play"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sound_cloud_player_bundle_key_client_id"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sound_cloud_player_bundle_key_track_url"

    .line 277
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private playTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 4

    .line 648
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->pauseTimer()V

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 654
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 657
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getLinkStream()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 659
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHasAlreadyPlayed:Z

    .line 664
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->updateNotification()V

    .line 666
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-virtual {v1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setPlaybackState(I)V

    .line 669
    new-instance v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    .line 693
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$2;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Lcom/squareup/picasso/Target;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    new-instance v1, Landroid/content/Intent;

    const-string v2, "simple_sc_listener_action_on_track_played"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "simple_sc_listener_extra_track"

    .line 705
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 706
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 707
    new-instance v1, Landroid/content/Intent;

    const-string v2, "simple_sc_listener_action_on_buffering_start"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 713
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 718
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 719
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->startTimer(J)V

    .line 726
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simple_sc_listener_action_on_buffering_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 731
    :catch_0
    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File referencing not exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private previousTrack()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->previous()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->playTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    return-void
.end method

.method public static registerListener(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;)V
    .locals 2

    .line 346
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "simple_sc_listener_action_on_track_played"

    .line 347
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_track_paused"

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_player_seek_complete"

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_player_destroyed"

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_buffering_start"

    .line 351
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_buffering_end"

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_progress_changed"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_action_on_duration_changed"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    .line 357
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private resume()V
    .locals 4

    .line 591
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    .line 594
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simple_sc_listener_action_on_track_played"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_extra_track"

    .line 599
    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    .line 600
    invoke-virtual {v3}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v3

    .line 599
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 601
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 603
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->updateNotification()V

    .line 604
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setPlaybackState(I)V

    .line 605
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->resumeTimer()V

    :cond_0
    return-void
.end method

.method public static resume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound_cloud_player_pause"

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sound_cloud_player_bundle_key_client_id"

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private resumeTimer()V
    .locals 6

    .line 800
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 801
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v0, v2

    .line 800
    invoke-direct {p0, v4, v5}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->startTimer(J)V

    return-void
.end method

.method public static seekTo(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound_cloud_player_seek_to"

    .line 333
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sound_cloud_player_bundle_key_client_id"

    .line 334
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sound_cloud_player_bundle_key_seek_to"

    .line 335
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private seekToPosition(I)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method private startTimer(J)V
    .locals 7

    .line 760
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    .line 766
    :cond_0
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$3;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;JJ)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    .line 782
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static stop(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sound_cloud_player_stop"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sound_cloud_player_bundle_key_client_id"

    .line 316
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private stopPlayer()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setPlaybackState(I)V

    .line 612
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x1

    .line 613
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    .line 614
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stopSelf()V

    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 810
    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mCountDown:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public static unregisterListener(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;)V
    .locals 0

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    .line 368
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateNotification()V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mNotificationManager:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    .line 740
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    .line 739
    invoke-virtual {v0, p0, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->notify(Landroid/app/Service;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 529
    :pswitch_0
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-nez p1, :cond_2

    .line 530
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->pause()V

    goto :goto_0

    .line 534
    :pswitch_1
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-nez p1, :cond_2

    .line 535
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->pause()V

    goto :goto_0

    .line 539
    :pswitch_2
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-nez p1, :cond_2

    .line 540
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 523
    :cond_0
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-eqz p1, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->resume()V

    .line 526
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 501
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->gotoIdleState()V

    .line 505
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 374
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 375
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->THREAD_NAME:Ljava/lang/String;

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 376
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 378
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$PlayerHandler;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerHandler:Landroid/os/Handler;

    .line 379
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 381
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->initializeMediaPlayer()V

    .line 382
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$StopHandler;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mStopServiceHandler:Landroid/os/Handler;

    .line 386
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMainThreadHandler:Landroid/os/Handler;

    .line 388
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->WIFI_LOCK_TAG:Ljava/lang/String;

    const/4 v2, 0x1

    .line 389
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 391
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 393
    invoke-static {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;->getInstance(Landroid/content/Context;)Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mNotificationManager:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationManager;

    .line 395
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getInstance()Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHasAlreadyPlayed:Z

    const-string v0, "audio"

    .line 399
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 401
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    new-instance v1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;)V

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;-><init>(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 411
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stopTimer()V

    .line 412
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 413
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaSession:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->onDestroy()V

    .line 415
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->stopForeground(Z)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v2, "simple_sc_listener_action_on_player_destroyed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 421
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 422
    iput-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 424
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 493
    sget-object p1, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer error occurred : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " => reset mediaPlayer"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->initializeMediaPlayer()V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 559
    :pswitch_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "simple_sc_listener_action_on_buffering_end"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p3, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return p1

    .line 554
    :pswitch_1
    new-instance p2, Landroid/content/Intent;

    const-string p3, "simple_sc_listener_action_on_buffering_start"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p3, p2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return p1

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .line 816
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerPlaylist:Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 818
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->setDuration(J)V

    .line 819
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simple_sc_listener_action_on_duration_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_extra_duration"

    .line 821
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v2, p1

    .line 820
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 822
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 823
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->resumeTimer()V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "simple_sc_listener_action_on_player_seek_complete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "simple_sc_listener_extra_current_time"

    .line 512
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 514
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-nez p1, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->resumeTimer()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 432
    iget-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    .line 433
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sound_cloud_player_bundle_key_client_id"

    .line 438
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mSoundCloundClientId:Ljava/lang/String;

    .line 441
    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x2

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "sound_cloud_player_seek_to"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "sound_cloud_player_becoming_noisy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "sound_cloud_toggle_playback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_3
    const-string v1, "sound_cloud_player_resume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "sound_cloud_play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "sound_cloud_player_stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "sound_cloud_player_next"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "sound_cloud_player_previous"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "sound_cloud_player_pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "sound_cloud_player_clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 479
    :pswitch_0
    iput v2, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 474
    :pswitch_1
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-nez p1, :cond_3

    .line 475
    iput p2, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 467
    :pswitch_2
    iget-boolean p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mIsPaused:Z

    if-eqz p1, :cond_2

    .line 468
    iput v8, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 470
    :cond_2
    iput p2, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 464
    :pswitch_3
    iput v3, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 461
    :pswitch_4
    iput v4, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 458
    :pswitch_5
    iput v5, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 455
    :pswitch_6
    iput v7, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 452
    :pswitch_7
    iput v8, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 449
    :pswitch_8
    iput p2, p3, Landroid/os/Message;->what:I

    goto :goto_2

    .line 446
    :pswitch_9
    iput v6, p3, Landroid/os/Message;->what:I

    .line 484
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->gotoIdleState()V

    .line 485
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 486
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->mPlayerHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return p2

    :sswitch_data_0
    .sparse-switch
        -0x40254197 -> :sswitch_9
        -0x3f72d1ee -> :sswitch_8
        -0x2a9192a5 -> :sswitch_7
        -0x1290f0a9 -> :sswitch_6
        -0x128e739a -> :sswitch_5
        0x30cb9c2e -> :sswitch_4
        0x54b9c391 -> :sswitch_3
        0x557e396c -> :sswitch_2
        0x7589e757 -> :sswitch_1
        0x769ae2be -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
