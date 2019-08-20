.class public Lcom/sherdle/universal/providers/maps/MapsFragment;
.super Landroid/support/v4/app/Fragment;
.source "MapsFragment.java"

# interfaces
.implements Lcom/sherdle/universal/inherit/PermissionsFragment;
.implements Lcom/sherdle/universal/inherit/CollapseControllingFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private ll:Landroid/widget/LinearLayout;

.field private mAct:Landroid/app/Activity;

.field private mMapView:Lcom/google/android/gms/maps/MapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/maps/MapsFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sherdle/universal/providers/maps/MapsFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mAct:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/maps/MapsFragment;)[Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->data:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/maps/MapsFragment;Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->focusMapOnLayer(Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V

    return-void
.end method

.method private focusMapOnLayer(Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V
    .locals 4

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getFeatures()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    .line 139
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->hasGeometry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v1

    .line 142
    invoke-interface {v1}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GeometryCollection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;

    .line 144
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;->getGeometries()Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/maps/android/data/Geometry;

    .line 147
    invoke-direct {p0, v2}, Lcom/sherdle/universal/providers/maps/MapsFragment;->getCoordinatesFromGeometry(Lcom/google/maps/android/data/Geometry;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 151
    :cond_1
    invoke-direct {p0, v1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->getCoordinatesFromGeometry(Lcom/google/maps/android/data/Geometry;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object p1

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 161
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mAct:Landroid/app/Activity;

    new-instance v1, Lcom/sherdle/universal/providers/maps/MapsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment$2;-><init>(Lcom/sherdle/universal/providers/maps/MapsFragment;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCoordinatesFromGeometry(Lcom/google/maps/android/data/Geometry;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/Geometry;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-interface {p1}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "LineString"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "Polygon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "Point"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "MultiLineString"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "MultiPoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "MultiPolygon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    .line 208
    :pswitch_0
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;

    .line 209
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;->getPolygons()Ljava/util/List;

    move-result-object p1

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    .line 211
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 201
    :pswitch_1
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    .line 202
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 194
    :pswitch_2
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;

    .line 195
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;->getLineStrings()Ljava/util/List;

    move-result-object p1

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    .line 197
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonLineString;->getCoordinates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 191
    :pswitch_3
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLineString;->getCoordinates()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 185
    :pswitch_4
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;->getPoints()Ljava/util/List;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    .line 187
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->getCoordinates()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 182
    :pswitch_5
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonPoint;->getCoordinates()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_6
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e2b361f -> :sswitch_5
        -0x3f883809 -> :sswitch_4
        -0x2560d4e2 -> :sswitch_3
        0x49b6570 -> :sswitch_2
        0x4b86ed1a -> :sswitch_1
        0x6bb01145 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dynamicToolbarElevation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mAct:Landroid/app/Activity;

    .line 85
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->isOnlineShowDialog(Landroid/app/Activity;)Z

    .line 87
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->data:[Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mAct:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I

    .line 91
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    new-instance v0, Lcom/sherdle/universal/providers/maps/MapsFragment$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/maps/MapsFragment$1;-><init>(Lcom/sherdle/universal/providers/maps/MapsFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0b0053

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->ll:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->setHasOptionsMenu(Z)V

    .line 74
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->ll:Landroid/widget/LinearLayout;

    const p2, 0x7f0900f0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/MapView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    .line 75
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 78
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->ll:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 126
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 225
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment;->mMapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    return-void
.end method

.method public requiredPermissions()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 231
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public supportsCollapse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
