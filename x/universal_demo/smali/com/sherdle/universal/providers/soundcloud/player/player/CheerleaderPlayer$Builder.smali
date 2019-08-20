.class public Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
.super Ljava/lang/Object;
.source "CheerleaderPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    new-instance v0, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    .line 575
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->setNotificationIcon(I)V

    .line 576
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    const v1, 0x7f0800ff

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->setNotificationIconBackground(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Context should be passed using \'Builder.from\' to build the client."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->apiKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 672
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Api key should be passed using \'Builder.with\' to build the client."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->apiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$400(Landroid/content/Context;Ljava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$500(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one api key can be used at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_2
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$600()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-static {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$700(Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;)V

    .line 682
    invoke-static {}, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;->access$600()Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer;

    move-result-object v0

    return-object v0
.end method

.method public from(Landroid/content/Context;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public notificationActivity(Landroid/app/Activity;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->setNotificationActivity(Landroid/app/Activity;)V

    return-object p0
.end method

.method public notificationBundle(Landroid/os/Bundle;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->setNotificationBundle(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public notificationIcon(I)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 626
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->setNotificationIcon(I)V

    return-object p0
.end method

.method public notificationIconBackground(I)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 639
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->notificationConfig:Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/providers/soundcloud/player/player/NotificationConfig;->setNotificationIconBackground(I)V

    return-object p0
.end method

.method public with(I)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 611
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 612
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context should be set first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public with(Ljava/lang/String;)Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 598
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SoundCloud api can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_0
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayer$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method
