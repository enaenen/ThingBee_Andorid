.class Lcom/sherdle/universal/providers/web/WebviewFragment$4;
.super Ljava/lang/Object;
.source "WebviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/web/WebviewFragment;->setMenuVisibility(Z)V
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

    .line 212
    iput-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$4;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$4;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->access$000(Lcom/sherdle/universal/providers/web/WebviewFragment;)Lcom/sherdle/universal/providers/web/AdvancedWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/sherdle/universal/providers/web/WebviewFragment$4;->this$0:Lcom/sherdle/universal/providers/web/WebviewFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/web/WebviewFragment;->access$000(Lcom/sherdle/universal/providers/web/WebviewFragment;)Lcom/sherdle/universal/providers/web/AdvancedWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/web/AdvancedWebView;->goForward()V

    :cond_0
    return-void
.end method
