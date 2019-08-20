.class Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$4;
.super Ljava/lang/Object;
.source "CartAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;->showQuantityEditor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter$4;->this$0:Lcom/sherdle/universal/providers/woocommerce/adapter/CartAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
