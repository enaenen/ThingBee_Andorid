.class Lcom/sherdle/universal/SettingsFragment$3;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/SettingsFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sherdle/universal/SettingsFragment$3;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 94
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment$3;->this$0:Lcom/sherdle/universal/SettingsFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sherdle/universal/SettingsFragment$3;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
