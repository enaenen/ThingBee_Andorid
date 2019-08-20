.class Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;
.super Ljava/lang/Object;
.source "MapsFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->onPostExecute(Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;

.field final synthetic val$layer:Lcom/google/maps/android/data/geojson/GeoJsonLayer;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;->this$1:Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;

    iput-object p2, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;->val$layer:Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 6

    .line 267
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;->val$layer:Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getFeatures()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    .line 268
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Point"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    .line 270
    invoke-virtual {v2}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->getCoordinates()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "url"

    .line 271
    invoke-virtual {v1, v2}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;->this$1:Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;

    iget-object v2, v2, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v2}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
