.class final Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 309
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 303
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 304
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onPlay()V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 315
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 316
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 321
    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 322
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;->onSkipToPrevious()V

    return-void
.end method
