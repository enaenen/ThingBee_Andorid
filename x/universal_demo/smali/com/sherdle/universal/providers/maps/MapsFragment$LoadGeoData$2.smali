.class Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;
.super Ljava/lang/Object;
.source "MapsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->doInBackground([Ljava/lang/String;)Lcom/google/maps/android/data/geojson/GeoJsonLayer;
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

    .line 299
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;->this$1:Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;

    iput-object p2, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;->val$layer:Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;->val$layer:Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->addLayerToMap()V

    .line 305
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;->val$layer:Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getFeatures()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    .line 306
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    new-instance v2, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-direct {v2}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;-><init>()V

    const-string v3, "name"

    .line 308
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setTitle(Ljava/lang/String;)V

    const-string v3, "snippet"

    .line 309
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "snippet"

    .line 310
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setSnippet(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "description"

    .line 311
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "description"

    .line 312
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setSnippet(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "popupContent"

    .line 313
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "popupContent"

    .line 314
    invoke-virtual {v1, v3}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->setSnippet(Ljava/lang/String;)V

    .line 315
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setPointStyle(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;)V

    goto :goto_0

    :cond_4
    return-void
.end method
