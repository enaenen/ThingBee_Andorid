.class public Lcom/sherdle/universal/providers/woocommerce/model/products/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attributes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private averageRating:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "average_rating"
    .end annotation
.end field

.field private backordered:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backordered"
    .end annotation
.end field

.field private backorders:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backorders"
    .end annotation
.end field

.field private backordersAllowed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backorders_allowed"
    .end annotation
.end field

.field private buttonText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "button_text"
    .end annotation
.end field

.field private catalogVisibility:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "catalog_visibility"
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
            ">;"
        }
    .end annotation
.end field

.field private crossSellIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cross_sell_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dateCreated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created"
    .end annotation
.end field

.field private dateModified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_modified"
    .end annotation
.end field

.field private dateOnSaleFrom:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_on_sale_from"
    .end annotation
.end field

.field private dateOnSaleTo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_on_sale_to"
    .end annotation
.end field

.field private defaultAttributes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_attributes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private dimensions:Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dimensions"
    .end annotation
.end field

.field private downloadExpiry:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_expiry"
    .end annotation
.end field

.field private downloadLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_limit"
    .end annotation
.end field

.field private downloadType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_type"
    .end annotation
.end field

.field private downloadable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloadable"
    .end annotation
.end field

.field private downloads:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downloads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private externalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_url"
    .end annotation
.end field

.field private featured:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "featured"
    .end annotation
.end field

.field private groupedProducts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grouped_products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private images:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Image;",
            ">;"
        }
    .end annotation
.end field

.field private inStock:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_stock"
    .end annotation
.end field

.field private manageStock:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manage_stock"
    .end annotation
.end field

.field private menuOrder:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "menu_order"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private onSale:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "on_sale"
    .end annotation
.end field

.field private parentId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_id"
    .end annotation
.end field

.field private permalink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "permalink"
    .end annotation
.end field

.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private priceHtml:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price_html"
    .end annotation
.end field

.field private purchasable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "purchasable"
    .end annotation
.end field

.field private purchaseNote:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "purchase_note"
    .end annotation
.end field

.field private ratingCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rating_count"
    .end annotation
.end field

.field private regularPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "regular_price"
    .end annotation
.end field

.field private relatedIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "related_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reviewsAllowed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reviews_allowed"
    .end annotation
.end field

.field private salePrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sale_price"
    .end annotation
.end field

.field private shippingClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_class"
    .end annotation
.end field

.field private shippingClassId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_class_id"
    .end annotation
.end field

.field private shippingRequired:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_required"
    .end annotation
.end field

.field private shippingTaxable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_taxable"
    .end annotation
.end field

.field private shortDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_description"
    .end annotation
.end field

.field private sku:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sku"
    .end annotation
.end field

.field private slug:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slug"
    .end annotation
.end field

.field private soldIndividually:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sold_individually"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private stockQuantity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stock_quantity"
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private taxClass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_class"
    .end annotation
.end field

.field private taxStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_status"
    .end annotation
.end field

.field private totalSales:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_sales"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private upsellIds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upsell_ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private variations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "variations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private virtual:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "virtual"
    .end annotation
.end field

.field private weight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Image;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloads:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->relatedIds:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->upsellIds:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->crossSellIds:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->categories:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->tags:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->images:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->attributes:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->defaultAttributes:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->variations:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->groupedProducts:Ljava/util/List;

    .line 1300
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->images:Ljava/util/List;

    .line 1301
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->name:Ljava/lang/String;

    .line 1302
    iput-object p3, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->price:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;",
            ">;"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getAverageRating()Ljava/lang/String;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->averageRating:Ljava/lang/String;

    return-object v0
.end method

.method public getBackordered()Ljava/lang/Boolean;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->backordered:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBackorders()Ljava/lang/String;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->backorders:Ljava/lang/String;

    return-object v0
.end method

.method public getBackordersAllowed()Ljava/lang/Boolean;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->backordersAllowed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public getCatalogVisibility()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->catalogVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getCrossSellIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->crossSellIds:Ljava/util/List;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateModified:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOnSaleFrom()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateOnSaleFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOnSaleTo()Ljava/lang/String;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateOnSaleTo:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;",
            ">;"
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->defaultAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensions()Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;
    .locals 1

    .line 927
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dimensions:Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    return-object v0
.end method

.method public getDownloadExpiry()Ljava/lang/Integer;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadExpiry:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDownloadLimit()Ljava/lang/Integer;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDownloadType()Ljava/lang/String;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadType:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadable()Ljava/lang/Boolean;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDownloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloads:Ljava/util/List;

    return-object v0
.end method

.method public getExternalUrl()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->externalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatured()Ljava/lang/Boolean;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->featured:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGroupedProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->groupedProducts:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Image;",
            ">;"
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->images:Ljava/util/List;

    return-object v0
.end method

.method public getInStock()Ljava/lang/Boolean;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->inStock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getManageStock()Ljava/lang/Boolean;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->manageStock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMenuOrder()Ljava/lang/Integer;
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->menuOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnSale()Ljava/lang/Boolean;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->onSale:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->salePrice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()Ljava/lang/Integer;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->parentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPermalink()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->price:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->price:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPriceHtml()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->priceHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasable()Ljava/lang/Boolean;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->purchasable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPurchaseNote()Ljava/lang/String;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->purchaseNote:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingCount()Ljava/lang/Integer;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->ratingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRegularPrice()F
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->regularPrice:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getRelatedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->relatedIds:Ljava/util/List;

    return-object v0
.end method

.method public getReviewsAllowed()Ljava/lang/Boolean;
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->reviewsAllowed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSalePrice()F
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->salePrice:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getShippingClass()Ljava/lang/String;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingClassId()Ljava/lang/Integer;
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingClassId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getShippingRequired()Ljava/lang/Boolean;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShippingTaxable()Ljava/lang/Boolean;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingTaxable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getSoldIndividually()Ljava/lang/Boolean;
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->soldIndividually:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStockQuantity()Ljava/lang/Integer;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->stockQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;",
            ">;"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTaxClass()Ljava/lang/String;
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->taxClass:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxStatus()Ljava/lang/String;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->taxStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSales()Ljava/lang/Integer;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->totalSales:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->upsellIds:Ljava/util/List;

    return-object v0
.end method

.method public getVariations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->variations:Ljava/util/List;

    return-object v0
.end method

.method public getVirtual()Ljava/lang/Boolean;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->virtual:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->weight:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 1224
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->attributes:Ljava/util/List;

    return-void
.end method

.method public setAverageRating(Ljava/lang/String;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->averageRating:Ljava/lang/String;

    return-void
.end method

.method public setBackordered(Ljava/lang/Boolean;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->backordered:Ljava/lang/Boolean;

    return-void
.end method

.method public setBackorders(Ljava/lang/String;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->backorders:Ljava/lang/String;

    return-void
.end method

.method public setBackordersAllowed(Ljava/lang/Boolean;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->backordersAllowed:Ljava/lang/Boolean;

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->buttonText:Ljava/lang/String;

    return-void
.end method

.method public setCatalogVisibility(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->catalogVisibility:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Category;",
            ">;)V"
        }
    .end annotation

    .line 1170
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->categories:Ljava/util/List;

    return-void
.end method

.method public setCrossSellIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1116
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->crossSellIds:Ljava/util/List;

    return-void
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateCreated:Ljava/lang/String;

    return-void
.end method

.method public setDateModified(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateModified:Ljava/lang/String;

    return-void
.end method

.method public setDateOnSaleFrom(Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateOnSaleFrom:Ljava/lang/String;

    return-void
.end method

.method public setDateOnSaleTo(Ljava/lang/String;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dateOnSaleTo:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAttributes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Attribute;",
            ">;)V"
        }
    .end annotation

    .line 1242
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->defaultAttributes:Ljava/util/List;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->description:Ljava/lang/String;

    return-void
.end method

.method public setDimensions(Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->dimensions:Lcom/sherdle/universal/providers/woocommerce/model/products/Dimensions;

    return-void
.end method

.method public setDownloadExpiry(Ljava/lang/Integer;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadExpiry:Ljava/lang/Integer;

    return-void
.end method

.method public setDownloadLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadLimit:Ljava/lang/Integer;

    return-void
.end method

.method public setDownloadType(Ljava/lang/String;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadType:Ljava/lang/String;

    return-void
.end method

.method public setDownloadable(Ljava/lang/Boolean;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloadable:Ljava/lang/Boolean;

    return-void
.end method

.method public setDownloads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 648
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->downloads:Ljava/util/List;

    return-void
.end method

.method public setExternalUrl(Ljava/lang/String;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->externalUrl:Ljava/lang/String;

    return-void
.end method

.method public setFeatured(Ljava/lang/Boolean;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->featured:Ljava/lang/Boolean;

    return-void
.end method

.method public setGroupedProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1278
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->groupedProducts:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Image;",
            ">;)V"
        }
    .end annotation

    .line 1206
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->images:Ljava/util/List;

    return-void
.end method

.method public setInStock(Ljava/lang/Boolean;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->inStock:Ljava/lang/Boolean;

    return-void
.end method

.method public setManageStock(Ljava/lang/Boolean;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->manageStock:Ljava/lang/Boolean;

    return-void
.end method

.method public setMenuOrder(Ljava/lang/Integer;)V
    .locals 0

    .line 1296
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->menuOrder:Ljava/lang/Integer;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnSale(Ljava/lang/Boolean;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->onSale:Ljava/lang/Boolean;

    return-void
.end method

.method public setParentId(Ljava/lang/Integer;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->parentId:Ljava/lang/Integer;

    return-void
.end method

.method public setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->permalink:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->price:Ljava/lang/String;

    return-void
.end method

.method public setPriceHtml(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->priceHtml:Ljava/lang/String;

    return-void
.end method

.method public setPurchasable(Ljava/lang/Boolean;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->purchasable:Ljava/lang/Boolean;

    return-void
.end method

.method public setPurchaseNote(Ljava/lang/String;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->purchaseNote:Ljava/lang/String;

    return-void
.end method

.method public setRatingCount(Ljava/lang/Integer;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->ratingCount:Ljava/lang/Integer;

    return-void
.end method

.method public setRegularPrice(Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->regularPrice:Ljava/lang/String;

    return-void
.end method

.method public setRelatedIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1080
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->relatedIds:Ljava/util/List;

    return-void
.end method

.method public setReviewsAllowed(Ljava/lang/Boolean;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->reviewsAllowed:Ljava/lang/Boolean;

    return-void
.end method

.method public setSalePrice(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->salePrice:Ljava/lang/String;

    return-void
.end method

.method public setShippingClass(Ljava/lang/String;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingClass:Ljava/lang/String;

    return-void
.end method

.method public setShippingClassId(Ljava/lang/Integer;)V
    .locals 0

    .line 1008
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingClassId:Ljava/lang/Integer;

    return-void
.end method

.method public setShippingRequired(Ljava/lang/Boolean;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingRequired:Ljava/lang/Boolean;

    return-void
.end method

.method public setShippingTaxable(Ljava/lang/Boolean;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shippingTaxable:Ljava/lang/Boolean;

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->shortDescription:Ljava/lang/String;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->sku:Ljava/lang/String;

    return-void
.end method

.method public setSlug(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->slug:Ljava/lang/String;

    return-void
.end method

.method public setSoldIndividually(Ljava/lang/Boolean;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->soldIndividually:Ljava/lang/Boolean;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->status:Ljava/lang/String;

    return-void
.end method

.method public setStockQuantity(Ljava/lang/Integer;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->stockQuantity:Ljava/lang/Integer;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/products/Tag;",
            ">;)V"
        }
    .end annotation

    .line 1188
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->tags:Ljava/util/List;

    return-void
.end method

.method public setTaxClass(Ljava/lang/String;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->taxClass:Ljava/lang/String;

    return-void
.end method

.method public setTaxStatus(Ljava/lang/String;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->taxStatus:Ljava/lang/String;

    return-void
.end method

.method public setTotalSales(Ljava/lang/Integer;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->totalSales:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpsellIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1098
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->upsellIds:Ljava/util/List;

    return-void
.end method

.method public setVariations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->variations:Ljava/util/List;

    return-void
.end method

.method public setVirtual(Ljava/lang/Boolean;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->virtual:Ljava/lang/Boolean;

    return-void
.end method

.method public setWeight(Ljava/lang/String;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/products/Product;->weight:Ljava/lang/String;

    return-void
.end method
