.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->setTrackListPadding()V
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

    .line 247
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 255
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 256
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$100(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 259
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$200(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setTranslationY(F)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$2;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$300(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
