.class Lcom/sherdle/universal/providers/web/AdvancedWebView$3;
.super Ljava/lang/Object;
.source "AdvancedWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/web/AdvancedWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/web/AdvancedWebView;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$3;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 957
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 959
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$3;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sherdle/universal/providers/web/AdvancedWebView$3;->this$0:Lcom/sherdle/universal/providers/web/AdvancedWebView;

    iget-object v0, v0, Lcom/sherdle/universal/providers/web/AdvancedWebView;->mListener:Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;

    move-object v1, p1

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p3

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/sherdle/universal/providers/web/AdvancedWebView$Listener;->onDownloadRequested(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
