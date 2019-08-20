.class public final Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/app/AppCompatActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/oss_licenses/zza;",
        ">;>;"
    }
.end annotation


# static fields
.field private static zze:Ljava/lang/String;


# instance fields
.field private zzf:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static setActivityTitle(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zze:Ljava/lang/String;

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/google/android/gms/oss/licenses/R$id;->license_list:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "raw"

    invoke-virtual {p0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return v0

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    throw p1

    :catch_2
    move-object p0, v1

    :catch_3
    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    return v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "third_party_licenses"

    invoke-static {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "third_party_license_metadata"

    invoke-static {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzg:Z

    sget-object p1, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zze:Ljava/lang/String;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zze:Ljava/lang/String;

    const-string p1, "OssLicensesMenuActivity"

    const-string v1, "The intent based title is deprecated. Use OssLicensesMenuActivity.setActivityTitle(title) instead."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zze:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zze:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzg:Z

    if-eqz p1, :cond_4

    sget p1, Lcom/google/android/gms/oss/licenses/R$layout;->libraries_social_licenses_license_menu_activity:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->setContentView(I)V

    new-instance p1, Landroid/widget/ArrayAdapter;

    sget v0, Lcom/google/android/gms/oss/licenses/R$layout;->libraries_social_licenses_license:I

    sget v1, Lcom/google/android/gms/oss/licenses/R$id;->license:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const v0, 0xd431

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    sget p1, Lcom/google/android/gms/oss/licenses/R$id;->license_list:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/google/android/gms/oss/licenses/zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/oss/licenses/zzc;-><init>(Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_4
    sget p1, Lcom/google/android/gms/oss/licenses/R$layout;->license_menu_activity_no_licenses:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->setContentView(I)V

    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;>;"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzg:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/oss/licenses/zzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/oss/licenses/zzb;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const v1, 0xd431

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public final bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public final onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/oss_licenses/zza;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->zzf:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/oss/licenses/OssLicensesMenuActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
