.class Lcom/sherdle/universal/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 207
    iput-object p1, p0, Lcom/sherdle/universal/MainActivity$2;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity$2;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-static {v0}, Lcom/sherdle/universal/MainActivity;->access$100(Lcom/sherdle/universal/MainActivity;)Landroid/support/design/widget/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity$2;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-static {v0}, Lcom/sherdle/universal/MainActivity;->access$100(Lcom/sherdle/universal/MainActivity;)Landroid/support/design/widget/BottomNavigationView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/MainActivity$2;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-static {v0, p1}, Lcom/sherdle/universal/MainActivity;->access$200(Lcom/sherdle/universal/MainActivity;I)V

    return-void
.end method
