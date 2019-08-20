.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

.field final synthetic val$tracks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;Ljava/util/List;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->val$tracks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$500(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->setFooterView(Landroid/view/View;)V

    .line 332
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->val$tracks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$500(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->setModeAndNotify(I)V

    .line 334
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->val$tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$600(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->val$tracks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$700(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    .line 338
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$500(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->setModeAndNotify(I)V

    .line 341
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$4;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$500(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->notifyDataSetChanged()V

    return-void
.end method
