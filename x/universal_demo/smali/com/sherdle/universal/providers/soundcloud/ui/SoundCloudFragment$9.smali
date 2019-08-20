.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "SoundCloudFragment.java"


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
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;II)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 456
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 457
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p1

    return p1
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 7

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    .line 483
    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 485
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$700(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060061

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 489
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    add-float v2, v1, p4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v3, v1

    .line 490
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v1, p1

    .line 489
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 493
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    :cond_1
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 473
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getTracks()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    .line 474
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->getTracks()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 475
    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {p2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$800(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object p2

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$9;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$200(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->removeTrack(I)V

    :cond_0
    return-void
.end method
