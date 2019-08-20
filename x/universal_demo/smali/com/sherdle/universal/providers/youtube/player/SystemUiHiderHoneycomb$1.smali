.class Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SystemUiHiderHoneycomb.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    invoke-static {v0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->access$000(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr p1, v0

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x400

    if-eqz p1, :cond_1

    .line 101
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 105
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {p1, v1}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 113
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    invoke-static {p1, v1}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->access$102(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;Z)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v3, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    invoke-static {v3}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->access$200(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 117
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_2

    .line 120
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    .line 121
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    iget-object p1, p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 129
    iget-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;->this$0:Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->access$102(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;Z)Z

    :goto_0
    return-void
.end method
