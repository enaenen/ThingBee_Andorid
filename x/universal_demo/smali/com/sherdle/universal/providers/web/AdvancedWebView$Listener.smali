.class public interface abstract Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;
.super Ljava/lang/Object;
.source "AdvancedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/web/AdvancedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDownloadRequested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onExternalPageRequest(Ljava/lang/String;)V
.end method

.method public abstract onPageError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPageFinished(Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
