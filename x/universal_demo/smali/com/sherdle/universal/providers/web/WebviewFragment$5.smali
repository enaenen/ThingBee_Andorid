.class Lcom/sherdle/universal/providers/web/WebviewFragment$5;
.super Ljava/lang/Object;
.source "WebviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/web/WebviewFragment;->showErrorScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/web/WebviewFragment;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$5;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$5;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->access$000(Lcom/sherdle/universal/providers/web/WebviewFragment;)Lcom/sherdle/universal/providers/web/AdvancedWebView;

    move-result-object p1

    const-string v0, "javascript:document.open();document.close();"

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->loadUrl(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$5;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->access$000(Lcom/sherdle/universal/providers/web/WebviewFragment;)Lcom/sherdle/universal/providers/web/AdvancedWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->reload()V

    return-void
.end method
