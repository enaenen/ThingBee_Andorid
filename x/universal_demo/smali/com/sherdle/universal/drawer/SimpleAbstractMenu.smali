.class public abstract Lcom/sherdle/universal/drawer/SimpleAbstractMenu;
.super Ljava/lang/Object;
.source "SimpleAbstractMenu.java"


# instance fields
.field protected callback:Lcom/sherdle/universal/drawer/MenuItemCallback;

.field protected menu:Landroid/view/Menu;

.field protected menuContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;>;"
        }
    .end annotation
.end field

.field protected menuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuContent:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;)Landroid/view/MenuItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;)",
            "Landroid/view/MenuItem;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method protected add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;Z)",
            "Landroid/view/MenuItem;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f0900ef

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;

    invoke-direct {p2, p0, p4, p5}, Lcom/sherdle/universal/drawer/SimpleAbstractMenu$1;-><init>(Lcom/sherdle/universal/drawer/SimpleAbstractMenu;Ljava/util/List;Z)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 48
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 50
    :cond_0
    iget-object p2, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuContent:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p2, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getFirstMenuItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuContent:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected getMenu()Landroid/view/Menu;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method protected getMenuItemCallback()Lcom/sherdle/universal/drawer/MenuItemCallback;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->callback:Lcom/sherdle/universal/drawer/MenuItemCallback;

    return-object v0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;->menuItems:Ljava/util/ArrayList;

    return-object v0
.end method
