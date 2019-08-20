.class public Lcom/sherdle/universal/SettingsFragment;
.super Landroid/support/v4/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;


# static fields
.field private static PRODUCT_ID_BOUGHT:Ljava/lang/String; = "item_1_bought"

.field public static SHOW_DIALOG:Ljava/lang/String; = "show_dialog"


# instance fields
.field HIDE_RATE_MY_APP:Z

.field private bp:Lcom/sherdle/universal/billing/BillingProcessor;

.field private dialog:Landroid/app/AlertDialog;

.field private preferencepurchase:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/sherdle/universal/SettingsFragment;->HIDE_RATE_MY_APP:Z

    return-void
.end method

.method private PRODUCT_ID()Ljava/lang/String;
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/sherdle/universal/SettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/sherdle/universal/SettingsFragment;->PRODUCT_ID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/SettingsFragment;)Lcom/sherdle/universal/billing/BillingProcessor;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    return-object p0
.end method

.method public static getIsPurchased(Landroid/content/Context;)Z
    .locals 2

    .line 209
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 211
    sget-object v0, Lcom/sherdle/universal/SettingsFragment;->PRODUCT_ID_BOUGHT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sherdle/universal/billing/BillingProcessor;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onBillingError(ILjava/lang/Throwable;)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f00e5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "INFO"

    const-string p2, "Error"

    .line 182
    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBillingInitialized()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f120000

    .line 46
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->addPreferencesFromResource(I)V

    const-string p1, "rate"

    .line 49
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 50
    new-instance v0, Lcom/sherdle/universal/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/SettingsFragment$1;-><init>(Lcom/sherdle/universal/SettingsFragment;)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "about"

    .line 70
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/sherdle/universal/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/SettingsFragment$2;-><init>(Lcom/sherdle/universal/SettingsFragment;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "licenses"

    .line 89
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/sherdle/universal/SettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/SettingsFragment$3;-><init>(Lcom/sherdle/universal/SettingsFragment;)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "preferenceScreen"

    .line 100
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    const-string v0, "menuOpenOnStart"

    .line 101
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "purchase"

    .line 106
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->preferencepurchase:Landroid/preference/Preference;

    .line 107
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/sherdle/universal/billing/BillingProcessor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sherdle/universal/billing/BillingProcessor$IBillingHandler;)V

    iput-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    .line 111
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-virtual {p1}, Lcom/sherdle/universal/billing/BillingProcessor;->loadOwnedPurchasesFromGoogle()Z

    .line 113
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->preferencepurchase:Landroid/preference/Preference;

    new-instance v0, Lcom/sherdle/universal/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/SettingsFragment$4;-><init>(Lcom/sherdle/universal/SettingsFragment;)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/SettingsFragment;->getIsPurchased(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->preferencepurchase:Landroid/preference/Preference;

    const v0, 0x7f080097

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0

    :cond_0
    const-string p1, "preferenceScreen"

    .line 126
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    const-string v0, "billing"

    .line 127
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 128
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lcom/sherdle/universal/SettingsFragment;->SHOW_DIALOG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f00e4

    .line 135
    new-instance v1, Lcom/sherdle/universal/SettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/SettingsFragment$5;-><init>(Lcom/sherdle/universal/SettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0f002e

    .line 140
    new-instance v1, Lcom/sherdle/universal/SettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/SettingsFragment$6;-><init>(Lcom/sherdle/universal/SettingsFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->dialog:Landroid/app/AlertDialog;

    .line 150
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 153
    :cond_2
    iget-boolean p1, p0, Lcom/sherdle/universal/SettingsFragment;->HIDE_RATE_MY_APP:Z

    if-eqz p1, :cond_3

    const-string p1, "other"

    .line 154
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    const-string v0, "rate"

    .line 155
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 156
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-virtual {v0}, Lcom/sherdle/universal/billing/BillingProcessor;->release()V

    .line 231
    :cond_0
    invoke-super {p0}, Landroid/support/v4/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onProductPurchased(Ljava/lang/String;Lcom/sherdle/universal/billing/TransactionDetails;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/sherdle/universal/SettingsFragment;->PRODUCT_ID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/sherdle/universal/SettingsFragment;->setIsPurchased(ZLandroid/content/Context;)V

    .line 173
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment;->preferencepurchase:Landroid/preference/Preference;

    const v0, 0x7f080097

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 174
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string p1, "INFO"

    const-string p2, "Purchase purchased"

    .line 176
    invoke-static {p1, p2}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPurchaseHistoryRestored()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->bp:Lcom/sherdle/universal/billing/BillingProcessor;

    invoke-direct {p0}, Lcom/sherdle/universal/SettingsFragment;->PRODUCT_ID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/billing/BillingProcessor;->isPurchased(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sherdle/universal/SettingsFragment;->setIsPurchased(ZLandroid/content/Context;)V

    const-string v0, "INFO"

    const-string v2, "Purchase actually restored"

    .line 189
    invoke-static {v0, v2}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->preferencepurchase:Landroid/preference/Preference;

    const v2, 0x7f080097

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 191
    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sherdle/universal/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string v0, "INFO"

    const-string v1, "Purchase restored called"

    .line 194
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsPurchased(ZLandroid/content/Context;)V
    .locals 1

    .line 199
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 201
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 203
    sget-object v0, Lcom/sherdle/universal/SettingsFragment;->PRODUCT_ID_BOUGHT:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
