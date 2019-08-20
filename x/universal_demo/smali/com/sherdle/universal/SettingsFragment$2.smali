.class Lcom/sherdle/universal/SettingsFragment$2;
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

    .line 72
    iput-object p1, p0, Lcom/sherdle/universal/SettingsFragment$2;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 76
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment$2;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment$2;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment$2;->this$0:Lcom/sherdle/universal/SettingsFragment;

    .line 80
    invoke-virtual {v0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment$2;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-virtual {v0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
