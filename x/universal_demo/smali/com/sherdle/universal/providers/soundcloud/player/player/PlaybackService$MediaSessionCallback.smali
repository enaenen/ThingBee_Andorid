.class final Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper$MediaSessionWrapperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;


# direct methods
.method private constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;)V
    .locals 0

    .line 879
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;-><init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$600(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$700(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    return-void
.end method

.method public onPlayPauseToggle()V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$1200(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$700(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$600(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    :goto_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$900(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$MediaSessionCallback;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$1000(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V

    return-void
.end method
