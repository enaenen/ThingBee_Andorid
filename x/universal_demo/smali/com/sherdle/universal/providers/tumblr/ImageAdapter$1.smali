.class Lcom/sherdle/universal/providers/tumblr/ImageAdapter$1;
.super Ljava/lang/Object;
.source "ImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/tumblr/ImageAdapter;I)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ImageAdapter$1;->this$0:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    iput p2, p0, Lcom/sherdle/universal/providers/tumblr/ImageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ImageAdapter$1;->this$0:Lcom/sherdle/universal/providers/tumblr/ImageAdapter;

    iget v0, p0, Lcom/sherdle/universal/providers/tumblr/ImageAdapter$1;->val$position:I

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/tumblr/ImageAdapter;->access$100(Lcom/sherdle/universal/providers/tumblr/ImageAdapter;I)V

    return-void
.end method
