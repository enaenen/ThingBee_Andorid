.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->loadTracks(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

.field final synthetic val$arguments:[Ljava/lang/String;

.field final synthetic val$from:I

.field final synthetic val$isPlaylistFinal:Z

.field final synthetic val$isWordpressFinal:Z


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Z[Ljava/lang/String;ZI)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    iput-boolean p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$isWordpressFinal:Z

    iput-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$arguments:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$isPlaylistFinal:Z

    iput p5, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 309
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$isWordpressFinal:Z

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-nez v0, :cond_2

    .line 314
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;

    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v3}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;-><init>(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$arguments:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 316
    iget-boolean v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$isPlaylistFinal:Z

    if-nez v1, :cond_1

    .line 317
    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$from:I

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;->getListTrackObjectsOfUser(JII)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$from:I

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sherdle/universal/providers/soundcloud/api/SoundCloudClient;->getListTrackObjectsOfPlaylist(JII)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;

    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$arguments:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v0, v3}, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$arguments:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget v5, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$from:I

    div-int/2addr v5, v2

    invoke-virtual {v0, v3, v5}, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->getTracksInCategory(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 324
    iget-object v5, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v5}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$400(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;

    move-result-object v5

    iget v6, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->val$from:I

    div-int/2addr v6, v2

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/WordpressClient;->getMaxPages()I

    move-result v0

    if-lt v6, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {v5, v1}, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;->forceCantLoadMore(Z)V

    move-object v0, v3

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$700(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;

    invoke-direct {v2, p0, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method
