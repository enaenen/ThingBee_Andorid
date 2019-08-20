.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;
.super Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;
.source "SoundCloudFragment.java"


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
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-direct {p0, p2}, Lcom/sherdle/universal/providers/soundcloud/helpers/EndlessRecyclerOnScrollListener;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public onLoadMore(I)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$300(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
