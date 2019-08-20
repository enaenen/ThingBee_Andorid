.class Lcom/sherdle/universal/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/MainActivity;->configureBottomNavigation(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/MainActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/MainActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/sherdle/universal/MainActivity$4;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 340
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity$4;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-static {v0}, Lcom/sherdle/universal/MainActivity;->access$400(Lcom/sherdle/universal/MainActivity;)Lcom/sherdle/universal/util/layout/DisableableViewPager;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sherdle/universal/util/layout/DisableableViewPager;->setCurrentItem(I)V

    const/4 p1, 0x0

    return p1
.end method
