.class Lcom/sherdle/universal/providers/maps/MapsFragment$2;
.super Ljava/lang/Object;
.source "MapsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/maps/MapsFragment;->focusMapOnLayer(Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

.field final synthetic val$boundingBoxFromBuilder:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/maps/MapsFragment;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$2;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    iput-object p2, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$2;->val$boundingBoxFromBuilder:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$2;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$000(Lcom/sherdle/universal/providers/maps/MapsFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$2;->val$boundingBoxFromBuilder:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    return-void
.end method
