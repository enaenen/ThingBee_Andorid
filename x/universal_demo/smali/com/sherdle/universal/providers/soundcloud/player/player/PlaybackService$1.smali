.class Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->playTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 3

    .line 675
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 677
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$200(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;->access$100(Lcom/sherdle/universal/providers/soundcloud/player/player/PlaybackService;)Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/PlayerPlaylist;->getCurrentTrack()Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v0

    .line 678
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 677
    invoke-virtual {p2, v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/media/MediaSessionWrapper;->setMetaData(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
