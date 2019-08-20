.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->initRetrieveTracksRecyclerView()V
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

    .line 381
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoreClicked(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0, p1, p2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$1000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V

    return-void
.end method

.method public onTrackClicked(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$900(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$802(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->play(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 392
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->addTrack(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Z)V

    .line 393
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$100(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->notifyDataSetChanged()V

    if-nez v0, :cond_2

    .line 396
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$700(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$6;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f00f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
