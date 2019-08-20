.class public abstract Landroid/support/v4/preference/PreferenceFragment;
.super Landroid/support/v4/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Landroid/support/v4/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v4/preference/PreferenceFragment$1;-><init>(Landroid/support/v4/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Landroid/support/v4/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v4/preference/PreferenceFragment$2;-><init>(Landroid/support/v4/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Landroid/support/v4/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v4/preference/PreferenceFragment$3;-><init>(Landroid/support/v4/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/preference/PreferenceFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 0

    .line 37
    iget-object p0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method private bindPreferences()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method private ensureList()V
    .locals 2

    .line 275
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v1, 0x102000a

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 283
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_2

    .line 284
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 289
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-nez v0, :cond_3

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_3
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 295
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 258
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .line 252
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2

    .line 205
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 207
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/preference/PreferenceManagerCompat;->inflateFromIntent(Landroid/preference/PreferenceManager;Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 3

    .line 217
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 219
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 219
    invoke-static {v0, v1, p1, v2}, Landroid/support/v4/preference/PreferenceManagerCompat;->inflateFromResource(Landroid/preference/PreferenceManager;Landroid/app/Activity;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 270
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;->ensureList()V

    .line 271
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0}, Landroid/support/v4/preference/PreferenceManagerCompat;->getPreferenceScreen(Landroid/preference/PreferenceManager;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    iget-boolean v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;->bindPreferences()V

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mInitDone:Z

    if-eqz p1, :cond_1

    const-string v0, "android:preferences"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/preference/PreferenceManagerCompat;->dispatchActivityResult(Landroid/preference/PreferenceManager;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p1, v0}, Landroid/support/v4/preference/PreferenceManagerCompat;->newInstance(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 90
    iget-object p1, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {p1, p0}, Landroid/support/v4/preference/PreferenceManagerCompat;->setFragment(Landroid/preference/PreferenceManager;Landroid/support/v4/preference/PreferenceFragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b0057

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 145
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0}, Landroid/support/v4/preference/PreferenceManagerCompat;->dispatchActivityDestroy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 137
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 0

    .line 230
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {p1, p0, p2}, Landroid/support/v4/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v4/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Landroid/support/v4/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 124
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0, p0}, Landroid/support/v4/preference/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 130
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0}, Landroid/support/v4/preference/PreferenceManagerCompat;->dispatchActivityStop(Landroid/preference/PreferenceManager;)V

    .line 131
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/preference/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V

    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/v4/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-static {v0, p1}, Landroid/support/v4/preference/PreferenceManagerCompat;->setPreferences(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Landroid/support/v4/preference/PreferenceFragment;->mHavePrefs:Z

    .line 183
    iget-boolean p1, p0, Landroid/support/v4/preference/PreferenceFragment;->mInitDone:Z

    if-eqz p1, :cond_0

    .line 184
    invoke-direct {p0}, Landroid/support/v4/preference/PreferenceFragment;->postBindPreferences()V

    :cond_0
    return-void
.end method
