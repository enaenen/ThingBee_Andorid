.class Lcom/rubengees/introduction/IntroductionFragment$1;
.super Ljava/lang/Object;
.source "IntroductionFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rubengees/introduction/IntroductionFragment;->initDefaultViews(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rubengees/introduction/IntroductionFragment;


# direct methods
.method constructor <init>(Lcom/rubengees/introduction/IntroductionFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment$1;->this$0:Lcom/rubengees/introduction/IntroductionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/rubengees/introduction/IntroductionFragment$1;->this$0:Lcom/rubengees/introduction/IntroductionFragment;

    invoke-static {p1}, Lcom/rubengees/introduction/IntroductionFragment;->access$000(Lcom/rubengees/introduction/IntroductionFragment;)Lcom/rubengees/introduction/entity/Slide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubengees/introduction/entity/Slide;->getOption()Lcom/rubengees/introduction/entity/Option;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/rubengees/introduction/entity/Option;->setActivated(Z)V

    return-void
.end method
