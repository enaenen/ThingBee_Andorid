.class Lcom/sherdle/universal/comments/CommentsActivity$3$1;
.super Ljava/lang/Object;
.source "CommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/comments/CommentsActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/comments/CommentsActivity$3;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/comments/CommentsActivity$3;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/sherdle/universal/comments/CommentsActivity$3$1;->this$1:Lcom/sherdle/universal/comments/CommentsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$3$1;->this$1:Lcom/sherdle/universal/comments/CommentsActivity$3;

    iget-object v0, v0, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    iget-object v0, v0, Lcom/sherdle/universal/comments/CommentsActivity;->commentsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 238
    iget-object v0, p0, Lcom/sherdle/universal/comments/CommentsActivity$3$1;->this$1:Lcom/sherdle/universal/comments/CommentsActivity$3;

    iget-object v0, v0, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/comments/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sherdle/universal/comments/CommentsActivity$3$1;->this$1:Lcom/sherdle/universal/comments/CommentsActivity$3;

    iget-object v1, v1, Lcom/sherdle/universal/comments/CommentsActivity$3;->this$0:Lcom/sherdle/universal/comments/CommentsActivity;

    .line 239
    invoke-virtual {v1}, Lcom/sherdle/universal/comments/CommentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
