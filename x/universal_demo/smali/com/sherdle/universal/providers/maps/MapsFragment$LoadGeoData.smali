.class Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;
.super Landroid/os/AsyncTask;
.source "MapsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/maps/MapsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadGeoData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/google/maps/android/data/geojson/GeoJsonLayer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/providers/maps/MapsFragment;Landroid/content/Context;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 250
    iput-object p2, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/maps/android/data/geojson/GeoJsonLayer;
    .locals 3

    const/4 v0, 0x0

    .line 284
    aget-object v1, p1, v0

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 285
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->getJSONObjectFromUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-static {v1, p1}, Lcom/sherdle/universal/util/Helper;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "INFO"

    const-string v1, "Error parsing JSON. Printing stacktrace now"

    .line 291
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {p1}, Lcom/sherdle/universal/util/Log;->printStackTrace(Ljava/lang/Exception;)V

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    return-object v2

    .line 298
    :cond_1
    new-instance v0, Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$000(Lcom/sherdle/universal/providers/maps/MapsFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V

    .line 299
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;

    invoke-direct {v1, p0, v0}, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$2;-><init>(Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 321
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {p1, v0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$300(Lcom/sherdle/universal/providers/maps/MapsFragment;Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 244
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->doInBackground([Ljava/lang/String;)Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V
    .locals 2

    .line 255
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-nez p1, :cond_1

    .line 261
    iget-object p1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$100(Lcom/sherdle/universal/providers/maps/MapsFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sherdle/universal/util/Helper;->noConnection(Landroid/app/Activity;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$000(Lcom/sherdle/universal/providers/maps/MapsFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData$1;-><init>(Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 244
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->onPostExecute(Lcom/google/maps/android/data/geojson/GeoJsonLayer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 328
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 329
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-static {v0}, Lcom/sherdle/universal/providers/maps/MapsFragment;->access$200(Lcom/sherdle/universal/providers/maps/MapsFragment;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    .line 331
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 332
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->this$0:Lcom/sherdle/universal/providers/maps/MapsFragment;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/maps/MapsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isIndeterminate()Z

    .line 334
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/MapsFragment$LoadGeoData;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
