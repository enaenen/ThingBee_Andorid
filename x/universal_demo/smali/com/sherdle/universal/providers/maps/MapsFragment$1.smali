.class Lcom/sherdle/universal/providers/maps/MapsFragment$1;
.super Ljava/lang/Object;
.source "MapsFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/maps/MapsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/maps/MapsFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$002(Lcom/sherdle/universal/providers/maps/MapsFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 95
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$000(Lcom/sherdle/universal/providers/maps/MapsFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 98
    :cond_0
    new-instance p1, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;

    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;-><init>(Lcom/sherdle/universal/providers/maps/MapsFragment;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$200(Lcom/sherdle/universal/providers/maps/MapsFragment;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
