.class Lcom/sherdle/universal/SettingsFragment$4;
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

    .line 114
    iput-object p1, p0, Lcom/sherdle/universal/SettingsFragment$4;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 117
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment$4;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/SettingsFragment;->access$100(Lcom/sherdle/universal/SettingsFragment;)Lcom/sherdle/universal/billing/BillingProcessor;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment$4;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/SettingsFragment$4;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-static {v1}, Lcom/sherdle/universal/SettingsFragment;->access$000(Lcom/sherdle/universal/SettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method
