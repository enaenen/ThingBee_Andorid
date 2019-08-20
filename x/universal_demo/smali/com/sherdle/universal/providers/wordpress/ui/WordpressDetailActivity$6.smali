.class Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$6;
.super Ljava/lang/Object;
.source "WordpressDetailActivity.java"

# interfaces
.implements Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->loadRelatedPosts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$6;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completedWithPosts()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity$6;->this$0:Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
