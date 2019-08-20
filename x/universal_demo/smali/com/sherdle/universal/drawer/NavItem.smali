.class public Lcom/sherdle/universal/drawer/NavItem;
.super Ljava/lang/Object;
.source "NavItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private categoryImageUrl:Ljava/lang/String;

.field private mData:[Ljava/lang/String;

.field private mFragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mTextResource:I

.field private tabIcon:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p2, p3}, Lcom/sherdle/universal/drawer/NavItem;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/sherdle/universal/drawer/NavItem;->mTextResource:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sherdle/universal/drawer/NavItem;->mText:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sherdle/universal/drawer/NavItem;->mFragment:Ljava/lang/Class;

    .line 29
    iput-object p3, p0, Lcom/sherdle/universal/drawer/NavItem;->mData:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryImageUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sherdle/universal/drawer/NavItem;->categoryImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sherdle/universal/drawer/NavItem;->mData:[Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/sherdle/universal/drawer/NavItem;->mFragment:Ljava/lang/Class;

    return-object v0
.end method

.method public getTabIcon()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/sherdle/universal/drawer/NavItem;->tabIcon:I

    return v0
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sherdle/universal/drawer/NavItem;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/sherdle/universal/drawer/NavItem;->mText:Ljava/lang/String;

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/sherdle/universal/drawer/NavItem;->mTextResource:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCategoryImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sherdle/universal/drawer/NavItem;->categoryImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTabIcon(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/sherdle/universal/drawer/NavItem;->tabIcon:I

    return-void
.end method
