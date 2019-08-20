.class final Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;
.super Ljava/lang/Object;
.source "WooCommerceDebugDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;->val$message:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1$1;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceDebugDialog$1;)V

    const v2, 0x1040013

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method
