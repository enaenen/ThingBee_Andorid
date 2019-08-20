.class public Lcom/sherdle/universal/providers/radio/player/RadioService;
.super Landroid/app/Service;
.source "RadioService.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_PAUSE:Ljava/lang/String; = "com.sherdle.universal.radio.ACTION_PAUSE"

.field public static final ACTION_PLAY:Ljava/lang/String; = "com.sherdle.universal.radio.ACTION_PLAY"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.sherdle.universal.radio.ACTION_STOP"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private becomingNoisyReceiver:Landroid/content/BroadcastReceiver;

.field private exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private handler:Landroid/os/Handler;

.field private final iBinder:Landroid/os/IBinder;

.field private mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mediasSessionCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

.field private notificationManager:Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

.field private onGoingCall:Z

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private serviceInUse:Z

.field private status:Ljava/lang/String;

.field private strAppName:Ljava/lang/String;

.field private strLiveBroadcast:Ljava/lang/String;

.field private streamUrl:Ljava/lang/String;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private transportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/player/RadioService$LocalBinder;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->iBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->onGoingCall:Z

    .line 73
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->serviceInUse:Z

    .line 87
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/RadioService$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/player/RadioService$1;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->becomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/RadioService$2;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/player/RadioService$2;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 123
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/RadioService$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/player/RadioService$3;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediasSessionCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/radio/player/RadioService;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->onGoingCall:Z

    return p0
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/radio/player/RadioService;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->onGoingCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/radio/player/RadioService;)Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->notificationManager:Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    return-object p0
.end method

.method private wifiLockRelease()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getMediaSession()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public getMetaData()Lcom/sherdle/universal/providers/radio/metadata/Metadata;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->notificationManager:Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->getMetaData()Lcom/sherdle/universal/providers/radio/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    const-string v1, "PlaybackStatus_PLAYING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stop()V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->pause()V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 315
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->resume()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->serviceInUse:Z

    .line 154
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->iBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 160
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 162
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->strAppName:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->strLiveBroadcast:Ljava/lang/String;

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->onGoingCall:Z

    const-string v0, "audio"

    .line 167
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->audioManager:Landroid/media/AudioManager;

    .line 169
    new-instance v0, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->notificationManager:Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    .line 171
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "mcScPAmpLock"

    const/4 v2, 0x1

    .line 172
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 174
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/support/v4/media/session/MediaButtonReceiver;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 176
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->transportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 177
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 179
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v3, "android.media.metadata.ARTIST"

    const-string v4, "..."

    .line 180
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v3, "android.media.metadata.ALBUM"

    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->strAppName:Ljava/lang/String;

    .line 181
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v3, "android.media.metadata.TITLE"

    iget-object v4, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->strLiveBroadcast:Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 184
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediasSessionCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    const-string v0, "phone"

    .line 186
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 187
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->handler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 191
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 192
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 193
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 194
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 195
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v1, Lcom/sherdle/universal/providers/radio/player/RadioService$4;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/radio/player/RadioService$4;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioDebugListener(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    .line 227
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 229
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->becomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "PlaybackStatus_IDLE"

    .line 231
    iput-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 289
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->pause()V

    .line 291
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 292
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 294
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->notificationManager:Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->cancelNotify()V

    .line 299
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->mediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 301
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->becomingNoisyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMetadataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/radio/metadata/Metadata;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    new-instance v1, Lcom/sherdle/universal/providers/radio/player/RadioService$5;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/radio/player/RadioService$5;-><init>(Lcom/sherdle/universal/providers/radio/player/RadioService;Lcom/sherdle/universal/providers/radio/metadata/Metadata;)V

    invoke-static {v0, v1, p0}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter;->getImageForQuery(Ljava/lang/String;Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;Landroid/content/Context;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    const-string p1, "PlaybackStatus_ERROR"

    .line 390
    invoke-static {p1}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    const-string p1, "PlaybackStatus_IDLE"

    .line 358
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const-string p1, "PlaybackStatus_STOPPED"

    .line 349
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    if-eqz p1, :cond_0

    const-string p1, "PlaybackStatus_PLAYING"

    goto :goto_0

    :cond_0
    const-string p1, "PlaybackStatus_PAUSED"

    .line 355
    :goto_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const-string p1, "PlaybackStatus_LOADING"

    .line 346
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    const-string p1, "PlaybackStatus_IDLE"

    .line 352
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    .line 362
    :goto_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    const-string p2, "PlaybackStatus_IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 363
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->notificationManager:Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;

    iget-object p2, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/radio/player/MediaNotificationManager;->startNotify(Ljava/lang/String;)V

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    invoke-static {p1}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->onEvent(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->serviceInUse:Z

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_0

    return p3

    .line 243
    :cond_0
    iget-object p2, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p2, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p2

    if-eq p2, v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stop()V

    return p3

    :cond_1
    const-string p2, "com.sherdle.universal.radio.ACTION_PLAY"

    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 253
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->transportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    goto :goto_0

    :cond_2
    const-string p2, "com.sherdle.universal.radio.ACTION_PAUSE"

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 257
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->transportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    goto :goto_0

    :cond_3
    const-string p2, "com.sherdle.universal.radio.ACTION_STOP"

    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 261
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->transportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    :cond_4
    :goto_0
    return p3
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 271
    iput-boolean v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->serviceInUse:Z

    .line 273
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->status:Ljava/lang/String;

    const-string v1, "PlaybackStatus_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->stopSelf()V

    .line 276
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 443
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 444
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLockRelease()V

    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 7

    .line 411
    iput-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 419
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    .line 420
    new-instance v3, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2, v0, p0}, Lcom/sherdle/universal/providers/radio/metadata/ShoutcastDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/sherdle/universal/providers/radio/metadata/ShoutcastMetadataListener;)V

    .line 421
    new-instance v4, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 422
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->handler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 424
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 425
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public playOrPause(Ljava/lang/String;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->play(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->pause()V

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->pause()V

    .line 477
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/radio/player/RadioService;->play(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->streamUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->play(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 451
    iget-object v0, p0, Lcom/sherdle/universal/providers/radio/player/RadioService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 452
    invoke-direct {p0}, Lcom/sherdle/universal/providers/radio/player/RadioService;->wifiLockRelease()V

    return-void
.end method
