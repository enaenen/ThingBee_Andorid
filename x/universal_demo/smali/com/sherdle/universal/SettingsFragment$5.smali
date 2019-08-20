.class Lcom/sherdle/universal/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 135
    iput-object p1, p0, Lcom/sherdle/universal/SettingsFragment$5;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/sherdle/universal/SettingsFragment$5;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/SettingsFragment;->access$100(Lcom/sherdle/universal/SettingsFragment;)Lcom/sherdle/universal/billing/BillingProcessor;

    move-result-object p1

    iget-object p2, p0, Lcom/sherdle/universal/SettingsFragment$5;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-virtual {p2}, Lcom/sherdle/universal/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/sherdle/universal/SettingsFragment$5;->this$0:Lcom/sherdle/universal/SettingsFragment;

    invoke-static {v0}, Lcom/sherdle/universal/SettingsFragment;->access$000(Lcom/sherdle/universal/SettingsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sherdle/universal/billing/BillingProcessor;->purchase(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method
