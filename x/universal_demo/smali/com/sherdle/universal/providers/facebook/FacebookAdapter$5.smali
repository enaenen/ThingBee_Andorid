.class Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

.field final synthetic val$post:Lcom/sherdle/universal/providers/facebook/FacebookItem;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;Lcom/sherdle/universal/providers/facebook/FacebookItem;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;->val$post:Lcom/sherdle/universal/providers/facebook/FacebookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 133
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->access$000(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sherdle/universal/comments/CommentsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_PARSEABLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;->val$post:Lcom/sherdle/universal/providers/facebook/FacebookItem;

    iget-object v1, v1, Lcom/sherdle/universal/providers/facebook/FacebookItem;->commentsArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    sget-object v0, Lcom/sherdle/universal/comments/CommentsActivity;->DATA_TYPE:Ljava/lang/String;

    sget v1, Lcom/sherdle/universal/comments/CommentsActivity;->FACEBOOK:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$5;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->access$000(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
