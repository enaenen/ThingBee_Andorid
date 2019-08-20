.class Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/overview/CategoryAdapter;->doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/overview/CategoryAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;->this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;->this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    invoke-static {p1}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->access$300(Lcom/sherdle/universal/providers/overview/CategoryAdapter;)Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;->this$0:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    invoke-static {v0}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->access$200(Lcom/sherdle/universal/providers/overview/CategoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/CategoryAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/drawer/NavItem;

    invoke-interface {p1, v0}, Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;->onOverViewSelected(Lcom/sherdle/universal/drawer/NavItem;)V

    return-void
.end method
