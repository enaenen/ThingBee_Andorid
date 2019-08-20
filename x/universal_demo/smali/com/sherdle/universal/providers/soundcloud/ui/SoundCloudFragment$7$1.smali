.class Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;
.super Ljava/lang/Object;
.source "SoundCloudFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;->onLoadMore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;

.field final synthetic val$current_page:I


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;I)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;

    iput p2, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;->val$current_page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;->this$1:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;

    iget-object v0, v0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;

    iget v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment$7$1;->val$current_page:I

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;->access$1100(Lcom/sherdle/universal/providers/soundcloud/ui/SoundCloudFragment;I)V

    return-void
.end method
