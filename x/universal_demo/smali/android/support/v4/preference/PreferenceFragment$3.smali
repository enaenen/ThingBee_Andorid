.class Landroid/support/v4/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/preference/PreferenceFragment;)V
    .locals 0

    .line 298
    iput-object p1, p0, Landroid/support/v4/preference/PreferenceFragment$3;->this$0:Landroid/support/v4/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 302
    iget-object p1, p0, Landroid/support/v4/preference/PreferenceFragment$3;->this$0:Landroid/support/v4/preference/PreferenceFragment;

    invoke-static {p1}, Landroid/support/v4/preference/PreferenceFragment;->access$100(Landroid/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    .line 303
    instance-of p1, p1, Landroid/preference/Preference;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Landroid/support/v4/preference/PreferenceFragment$3;->this$0:Landroid/support/v4/preference/PreferenceFragment;

    invoke-static {p1}, Landroid/support/v4/preference/PreferenceFragment;->access$100(Landroid/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    return p2

    :cond_0
    return p2
.end method
