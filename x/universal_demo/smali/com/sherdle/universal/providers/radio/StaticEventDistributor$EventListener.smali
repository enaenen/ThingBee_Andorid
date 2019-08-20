.class public interface abstract Lcom/sherdle/universal/providers/radio/StaticEventDistributor$EventListener;
.super Ljava/lang/Object;
.source "StaticEventDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/radio/StaticEventDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAudioSessionId(Ljava/lang/Integer;)V
.end method

.method public abstract onEvent(Ljava/lang/String;)V
.end method

.method public abstract onMetaDataReceived(Lcom/sherdle/universal/providers/radio/metadata/Metadata;Landroid/graphics/Bitmap;)V
.end method
