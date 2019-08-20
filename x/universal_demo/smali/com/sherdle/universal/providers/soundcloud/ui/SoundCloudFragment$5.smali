.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->showTrackActionsPopup(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

.field final synthetic val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0900f6

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900f9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 362
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 366
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getPermalinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-virtual {v2}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$700(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$5;->val$track:Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getLinkStream()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/util/Helper;->download(Landroid/app/Activity;Ljava/lang/String;)V

    return v1
.end method
