.class public Lcom/sherdle/universal/drawer/SimpleSubMenu;
.super Ljava/lang/Object;
.source "SimpleSubMenu.java"


# instance fields
.field private parent:Lcom/sherdle/universal/drawer/SimpleMenu;

.field private subMenu:Landroid/view/SubMenu;

.field private subMenuTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/drawer/SimpleMenu;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->parent:Lcom/sherdle/universal/drawer/SimpleMenu;

    .line 28
    iput-object p2, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->subMenuTitle:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/SimpleMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->subMenu:Landroid/view/SubMenu;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/util/List;)Landroid/view/MenuItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;)",
            "Landroid/view/MenuItem;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->parent:Lcom/sherdle/universal/drawer/SimpleMenu;

    iget-object v1, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->subMenu:Landroid/view/SubMenu;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/sherdle/universal/drawer/SimpleMenu;->add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;Z)",
            "Landroid/view/MenuItem;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->parent:Lcom/sherdle/universal/drawer/SimpleMenu;

    iget-object v1, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->subMenu:Landroid/view/SubMenu;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sherdle/universal/drawer/SimpleMenu;->add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getSubMenuTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleSubMenu;->subMenuTitle:Ljava/lang/String;

    return-object v0
.end method
