.class public Lcom/sherdle/universal/providers/radio/StaticEventDistributor;
.super Ljava/lang/Object;
.source "StaticEventDistributor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;
    }
.end annotation


# static fields
.field private static listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAudioSessionId(Ljava/lang/Integer;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;

    .line 35
    invoke-interface {v1, p0}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;->onAudioSessionId(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onEvent(Ljava/lang/String;)V
    .locals 2

    .line 24
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;

    .line 27
    invoke-interface {v1, p0}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;->onEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onMetaDataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 40
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;

    .line 43
    invoke-interface {v1, p0, p1}, Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;->onMetaDataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static registerAsListener(Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    .line 16
    :cond_0
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterAsListener(Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;)V
    .locals 1

    .line 20
    sget-object v0, Lcom/sherdle/universal/providers/radio/StaticEventDistributor;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
