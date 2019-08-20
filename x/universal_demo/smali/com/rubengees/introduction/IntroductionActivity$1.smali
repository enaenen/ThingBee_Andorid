.class Lcom/rubengees/introduction/IntroductionActivity$1;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rubengees/introduction/IntroductionActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 117
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionActivity$1;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 3

    .line 121
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result p2

    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/rubengees/introduction/IntroductionActivity$1;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v1}, Lcom/rubengees/introduction/IntroductionActivity;->access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 134
    iget-object v2, p0, Lcom/rubengees/introduction/IntroductionActivity$1;->this$0:Lcom/rubengees/introduction/IntroductionActivity;

    invoke-static {v2}, Lcom/rubengees/introduction/IntroductionActivity;->access$000(Lcom/rubengees/introduction/IntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    .line 136
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    :cond_3
    return-object p1
.end method
