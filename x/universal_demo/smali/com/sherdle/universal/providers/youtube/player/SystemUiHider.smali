.class public abstract Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$1;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$1;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->sDummyListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->sDummyListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    iput-object v0, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    .line 104
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->mActivity:Landroid/app/Activity;

    .line 105
    iput-object p2, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 106
    iput p3, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->mFlags:I

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;
    .locals 2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 97
    new-instance v0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;

    invoke-direct {v0, p0, p1, p2}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    return-object v0
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public setOnVisibilityChangeListener(Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 147
    sget-object p1, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->sDummyListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->mOnVisibilityChangeListener:Lcom/sherdle/universal/providers/youtube/player/SystemUiHider$OnVisibilityChangeListener;

    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->hide()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/youtube/player/SystemUiHider;->show()V

    :goto_0
    return-void
.end method
