.class Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;
.super Ljava/lang/Object;
.source "ExoMediaPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapabilitiesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;->this$0:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .locals 0

    .line 675
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded()V
    .locals 0

    return-void
.end method

.method public onDrmKeysRemoved()V
    .locals 0

    return-void
.end method

.method public onDrmKeysRestored()V
    .locals 0

    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;->this$0:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->access$700(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$CapabilitiesListener;->this$0:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->access$700(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
