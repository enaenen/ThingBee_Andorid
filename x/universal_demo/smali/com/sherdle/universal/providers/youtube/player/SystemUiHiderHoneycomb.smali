.class public Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;
.super Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;
.source "SystemUiHiderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mHideFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mVisible:Z

    .line 96
    new-instance p2, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;

    invoke-direct {p2, p0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb$1;-><init>(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    const/4 p2, 0x0

    .line 49
    iput p2, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 50
    iput p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 51
    iput p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 53
    iget p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mFlags:I

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 58
    iget p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 59
    iget p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 p1, p1, 0x404

    iput p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 63
    :cond_0
    iget p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 p1, p1, 0x6

    if-eqz p1, :cond_1

    .line 65
    iget p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 66
    iget p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mHideFlags:I

    or-int/lit16 p1, p1, 0x202

    iput p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 68
    iput p2, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mTestFlags:I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mTestFlags:I

    return p0
.end method

.method static synthetic access$102(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    return p0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mHideFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget v1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;->mShowFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
