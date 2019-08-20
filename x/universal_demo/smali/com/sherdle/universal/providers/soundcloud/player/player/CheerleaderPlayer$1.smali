.class Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;
.super Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;
.source "CheerleaderPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->initInternalListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-direct {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBufferingEnded()V
    .locals 2

    .line 525
    invoke-super {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onBufferingEnded()V

    .line 526
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 527
    invoke-interface {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onBufferingEnded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBufferingStarted()V
    .locals 2

    .line 508
    invoke-super {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onBufferingStarted()V

    .line 509
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 510
    invoke-interface {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onBufferingStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDurationChanged(J)V
    .locals 2

    .line 516
    invoke-super {p0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onDurationChanged(J)V

    .line 517
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 518
    invoke-interface {v1, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onDurationChanged(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 479
    invoke-super {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onPause()V

    .line 480
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$002(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;I)I

    .line 481
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 482
    invoke-interface {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onPlayerPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 3

    .line 470
    invoke-super {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    .line 471
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$002(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;I)I

    .line 472
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 473
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrackIndex()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onPlayerPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayerDestroyed()V
    .locals 2

    .line 488
    invoke-super {p0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onPlayerDestroyed()V

    .line 489
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$002(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;I)I

    .line 490
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 491
    invoke-interface {v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onPlayerDestroyed()V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$300(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->destroy()V

    :cond_1
    return-void
.end method

.method protected onProgressChanged(I)V
    .locals 2

    .line 533
    invoke-super {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onProgressChanged(I)V

    .line 534
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 535
    invoke-interface {v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onProgressChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeekTo(I)V
    .locals 2

    .line 500
    invoke-super {p0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackListener;->onSeekTo(I)V

    .line 501
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;

    .line 502
    invoke-interface {v1, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;->onPlayerSeekTo(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
