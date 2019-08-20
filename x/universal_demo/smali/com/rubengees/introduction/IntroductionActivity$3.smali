.class Lcom/rubengees/introduction/IntroductionActivity$3;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rubengees/introduction/IntroductionActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rubengees/introduction/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/rubengees/introduction/IntroductionActivity;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$3;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$3;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {p1}, Lcom/rubengees/introduction/IntroductionActivity;->access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity$3;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v0}, Lcom/rubengees/introduction/IntroductionActivity;->access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
