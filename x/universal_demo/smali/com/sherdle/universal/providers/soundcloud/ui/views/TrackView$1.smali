.class Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;
.super Ljava/lang/Object;
.source "TrackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->access$000(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$1;->this$0:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    invoke-static {v1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->access$100(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;)Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;->onMoreClicked(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Landroid/view/View;)V

    :cond_0
    return-void
.end method
