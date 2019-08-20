.class public final Lcom/google/android/gms/oss/licenses/OssLicensesActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/google/android/gms/oss/licenses/R$layout;->libraries_social_licenses_license_activity:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "license"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/oss_licenses/zza;

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/oss_licenses/zza;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/google/android/gms/oss/licenses/R$id;->license_activity_textview:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/oss_licenses/zzc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/oss_licenses/zza;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    sget p1, Lcom/google/android/gms/oss/licenses/R$string;->license_content_error:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    sget v0, Lcom/google/android/gms/oss/licenses/R$id;->license_activity_scrollview:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const-string v1, "scroll_pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v1, Lcom/google/android/gms/oss/licenses/zza;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/oss/licenses/zza;-><init>(Lcom/google/android/gms/oss/licenses/OssLicensesActivity;ILandroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget v0, Lcom/google/android/gms/oss/licenses/R$id;->license_activity_scrollview:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    sget v1, Lcom/google/android/gms/oss/licenses/R$id;->license_activity_textview:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    const-string v1, "scroll_pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
