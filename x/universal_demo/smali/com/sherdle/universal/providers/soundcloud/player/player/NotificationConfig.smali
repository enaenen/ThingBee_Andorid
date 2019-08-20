.class final Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;
.super Ljava/lang/Object;
.source "NotificationConfig.java"


# instance fields
.field private mNotificationActivity:Landroid/app/Activity;

.field private mNotificationBundle:Landroid/os/Bundle;

.field private mNotificationIcon:I

.field private mNotificationIconBackground:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationActivity()Landroid/app/Activity;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getNotificationBundle()Landroid/os/Bundle;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotificationIcon()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationIcon:I

    return v0
.end method

.method public getNotificationIconBackground()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationIconBackground:I

    return v0
.end method

.method public setNotificationActivity(Landroid/app/Activity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationActivity:Landroid/app/Activity;

    return-void
.end method

.method public setNotificationBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setNotificationIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 53
    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationIcon:I

    return-void
.end method

.method public setNotificationIconBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 71
    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->mNotificationIconBackground:I

    return-void
.end method
