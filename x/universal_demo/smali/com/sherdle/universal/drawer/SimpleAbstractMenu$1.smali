.class Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;
.super Ljava/lang/Object;
.source "SimpleAbstractMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/drawer/SimpleAbstractMenu;

.field final synthetic val$action:Ljava/util/List;

.field final synthetic val$requiresPurchase:Z


# direct methods
.method constructor <init>(Lcom/sherdle/universal/drawer/SimpleAbstractMenu;Ljava/util/List;Z)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;->this$0:Lcom/sherdle/universal/drawer/SimpleAbstractMenu;

    iput-object p2, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;->val$action:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;->val$requiresPurchase:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;->this$0:Lcom/sherdle/universal/drawer/SimpleAbstractMenu;

    iget-object v0, v0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->callback:Lcom/sherdle/universal/drawer/MenuItemCallback;

    iget-object v1, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;->val$action:Ljava/util/List;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-boolean v2, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;->val$requiresPurchase:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/sherdle/universal/drawer/MenuItemCallback;->menuItemClicked(Ljava/util/List;IZ)V

    const/4 p1, 0x1

    return p1
.end method
