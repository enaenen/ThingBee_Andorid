.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$4;
.super Ljava/lang/Object;
.source "WordpressFragment.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$4;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$4;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->access$000(Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;)Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;->isLoading:Z

    if-nez p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment$4;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;->getPosts()V

    :cond_0
    return-void
.end method
