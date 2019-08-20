.class public Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;
.super Ljava/lang/Object;
.source "MediaSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;,
        Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;,
        Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;
    }
.end annotation


# static fields
.field static final ACTION_NEXT_TRACK:Ljava/lang/String; = "sherdle.universal.soundcloud.library.media.NEXT_TRACK"

.field static final ACTION_PREVIOUS_TRACK:Ljava/lang/String; = "com.sherdle.universal.providers.soundcloud.library.media.PREVIOUS_TRACK"

.field static final ACTION_TOGGLE_PLAYBACK:Ljava/lang/String; = "com.sherdle.universal.providers.soundcloud.library.media.TOGGLE_PLAYBACK"

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1

.field public static final PLAYBACK_STATE_STOPPED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSessionWrapper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

.field private mContext:Landroid/content/Context;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private mLockScreenReceiver:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;

.field private mMediaButtonReceiverComponent:Landroid/content/ComponentName;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

.field private mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

.field private mRuntimePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;Landroid/media/AudioManager;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mCallback:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    .line 129
    iput-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRuntimePackageName:Ljava/lang/String;

    .line 133
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->initLockScreenRemoteControlClient(Landroid/content/Context;)V

    .line 135
    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Landroid/support/v4/media/session/MediaButtonReceiver;

    invoke-direct {p2, p3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    new-instance p3, Landroid/support/v4/media/session/MediaSessionCompat;

    sget-object v0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v0, p2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 137
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance p2, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;

    invoke-direct {p2, p0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 138
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mCallback:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    return-object p0
.end method

.method private initLockScreenRemoteControlClient(Landroid/content/Context;)V
    .locals 3

    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 257
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRuntimePackageName:Ljava/lang/String;

    const-class v2, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionReceiver;

    .line 258
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    .line 259
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 261
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 264
    new-instance v1, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    const/4 v2, 0x0

    .line 265
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    .line 266
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlHelper;->registerRemoteControlClient(Landroid/media/AudioManager;Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 270
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    const/16 v1, 0xbd

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 277
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->registerLockScreenReceiver(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private registerLockScreenReceiver(Landroid/content/Context;)V
    .locals 2

    .line 287
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$1;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mLockScreenReceiver:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sherdle.universal.providers.soundcloud.library.media.TOGGLE_PLAYBACK"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "sherdle.universal.soundcloud.library.media.NEXT_TRACK"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sherdle.universal.providers.soundcloud.library.media.PREVIOUS_TRACK"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 293
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mLockScreenReceiver:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setMediaSessionCompatPlaybackState(I)V
    .locals 4

    .line 244
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 245
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 246
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method private setRemoteControlClientPlaybackState(I)V
    .locals 2

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->setPlaybackState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 149
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 150
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mLockScreenReceiver:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$LockScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    return-void
.end method

.method public setMetaData(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setMetaData(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setMetaData(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 204
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 205
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mRemoteControlClientCompat:Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;

    const/4 v2, 0x1

    .line 206
    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat;->editMetadata(Z)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/4 v2, 0x7

    .line 207
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/4 v2, 0x2

    .line 208
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 v2, 0x64

    .line 210
    invoke-virtual {v0, v2, p2}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->putBitmap(ILandroid/graphics/Bitmap;)Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;

    .line 213
    :cond_0
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/remote/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 217
    :cond_1
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    const-string v2, "android.media.metadata.TITLE"

    .line 218
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v2, "android.media.metadata.ARTIST"

    .line 219
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    const-string v0, "android.media.metadata.ART"

    .line 221
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 223
    :cond_2
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setMediaSessionCompatPlaybackState(I)V

    return-void
.end method

.method public setPlaybackState(I)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 178
    sget-object p1, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Unknown playback state."

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 174
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setRemoteControlClientPlaybackState(I)V

    .line 175
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setMediaSessionCompatPlaybackState(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    const/4 p1, 0x3

    .line 170
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setRemoteControlClientPlaybackState(I)V

    .line 171
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setMediaSessionCompatPlaybackState(I)V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setRemoteControlClientPlaybackState(I)V

    .line 166
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setMediaSessionCompatPlaybackState(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
