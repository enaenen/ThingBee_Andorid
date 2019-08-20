.class public Lcom/sherdle/universal/drawer/SimpleMenu;
.super Lcom/sherdle/universal/drawer/SimpleAbstractMenu;
.source "SimpleMenu.java"


# direct methods
.method public constructor <init>(Landroid/view/Menu;Lcom/sherdle/universal/drawer/MenuItemCallback;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sherdle/universal/drawer/SimpleAbstractMenu;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sherdle/universal/drawer/SimpleMenu;->menu:Landroid/view/Menu;

    .line 21
    iput-object p2, p0, Lcom/sherdle/universal/drawer/SimpleMenu;->callback:Lcom/sherdle/universal/drawer/MenuItemCallback;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;ILjava/util/List;)Landroid/view/MenuItem;
    .locals 1
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

    .line 25
    iget-object v0, p0, Lcom/sherdle/universal/drawer/SimpleMenu;->menu:Landroid/view/Menu;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sherdle/universal/drawer/SimpleMenu;->add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;)Landroid/view/MenuItem;

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

    .line 29
    iget-object v1, p0, Lcom/sherdle/universal/drawer/SimpleMenu;->menu:Landroid/view/Menu;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sherdle/universal/drawer/SimpleMenu;->add(Landroid/view/Menu;Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
