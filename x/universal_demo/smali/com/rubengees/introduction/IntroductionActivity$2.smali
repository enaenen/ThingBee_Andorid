.class Lcom/rubengees/introduction/IntroductionActivity$2;
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

    .line 239
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$2;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 242
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$2;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {p1}, Lcom/rubengees/introduction/IntroductionActivity;->access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 244
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity$2;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v0}, Lcom/rubengees/introduction/IntroductionActivity;->access$100(Lcom/rubengees/introduction/IntroductionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 245
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$2;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {p1}, Lcom/rubengees/introduction/IntroductionActivity;->access$200(Lcom/rubengees/introduction/IntroductionActivity;)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/IntroductionActivity$2;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v0}, Lcom/rubengees/introduction/IntroductionActivity;->access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method
