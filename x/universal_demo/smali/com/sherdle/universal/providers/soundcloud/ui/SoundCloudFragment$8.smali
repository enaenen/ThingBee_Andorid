.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$8;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initPlaylistTracksRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$8;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoreClicked(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$8;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$1000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V

    return-void
.end method

.method public onTrackClicked(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$8;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->play(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    return-void
.end method
