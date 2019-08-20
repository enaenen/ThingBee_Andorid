.class Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;
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

    .line 122
    iput-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;->val$post:Lcom/sherdle/universal/providers/facebook/FacebookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;->this$0:Lcom/sherdle/universal/providers/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/facebook/FacebookAdapter;->access$000(Lcom/sherdle/universal/providers/facebook/FacebookAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/facebook/FacebookAdapter$4;->val$post:Lcom/sherdle/universal/providers/facebook/FacebookItem;

    iget-object v0, v0, Lcom/sherdle/universal/providers/facebook/FacebookItem;->link:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
