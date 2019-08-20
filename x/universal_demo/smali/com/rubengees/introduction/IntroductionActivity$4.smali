.class Lcom/rubengees/introduction/IntroductionActivity$4;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 260
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$4;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

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

    .line 269
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity$4;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v0}, Lcom/rubengees/introduction/IntroductionActivity;->access$300(Lcom/rubengees/introduction/IntroductionActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity$4;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v0, p1}, Lcom/rubengees/introduction/IntroductionActivity;->access$400(Lcom/rubengees/introduction/IntroductionActivity;I)V

    .line 272
    invoke-static {}, Lcom/rubengees/introduction/IntroductionConfiguration;->getInstance()Lcom/rubengees/introduction/IntroductionConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity$4;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    .line 273
    invoke-static {v1}, Lcom/rubengees/introduction/IntroductionActivity;->access$300(Lcom/rubengees/introduction/IntroductionActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/rubengees/introduction/IntroductionConfiguration;->callOnSlideChanged(II)V

    .line 274
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity$4;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v0, p1}, Lcom/rubengees/introduction/IntroductionActivity;->access$302(Lcom/rubengees/introduction/IntroductionActivity;I)I

    :cond_0
    return-void
.end method
