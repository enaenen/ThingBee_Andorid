.class Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;
.super Ljava/lang/Object;
.source "CartAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->onBindViewHolder(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

.field final synthetic val$holder:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;->val$holder:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$2;->val$holder:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->access$100(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;I)V

    return-void
.end method
