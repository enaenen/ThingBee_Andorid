.class final Lcom/google/android/gms/oss/licenses/zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:I

.field private final synthetic zzb:Landroid/widget/ScrollView;

.field private final synthetic zzc:Lcom/google/android/gms/oss/licenses/OssLicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/oss/licenses/OssLicensesActivity;ILandroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/oss/licenses/zza;->zzc:Lcom/google/android/gms/oss/licenses/OssLicensesActivity;

    iput p2, p0, Lcom/google/android/gms/oss/licenses/zza;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/oss/licenses/zza;->zzb:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/oss/licenses/zza;->zzc:Lcom/google/android/gms/oss/licenses/OssLicensesActivity;

    sget v1, Lcom/google/android/gms/oss/licenses/R$id;->license_activity_textview:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/oss/licenses/OssLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/oss/licenses/zza;->zza:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/oss/licenses/zza;->zzb:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
