.class final Landroid/support/v4/preference/PreferenceManagerCompat$1;
.super Ljava/lang/Object;
.source "PreferenceManagerCompat.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/preference/PreferenceManagerCompat;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager;Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;


# direct methods
.method constructor <init>(Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Landroid/support/v4/preference/PreferenceManagerCompat$1;->val$listener:Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPreferenceTreeClick"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Landroid/support/v4/preference/PreferenceManagerCompat$1;->val$listener:Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    check-cast p3, Landroid/preference/Preference;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/preference/PreferenceManagerCompat$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
