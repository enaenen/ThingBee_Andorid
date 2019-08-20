.class public Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;
.super Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;
.source "SystemUiHiderBase.java"


# instance fields
.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mVisible:Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 45
    iget v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 51
    iput-boolean v1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mVisible:Z

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    .line 29
    iget v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 56
    iget v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 62
    iput-boolean v1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;->mVisible:Z

    return-void
.end method
