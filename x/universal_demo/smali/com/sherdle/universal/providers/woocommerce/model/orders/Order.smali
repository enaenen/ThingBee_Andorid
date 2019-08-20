.class public Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;
.super Ljava/lang/Object;
.source "Order.java"


# static fields
.field private static final ORDER_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private billing:Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billing"
    .end annotation
.end field

.field private cartHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cart_hash"
    .end annotation
.end field

.field private cartTax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cart_tax"
    .end annotation
.end field

.field private couponLines:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coupon_lines"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private createdVia:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_via"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private customerId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_id"
    .end annotation
.end field

.field private customerIpAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_ip_address"
    .end annotation
.end field

.field private customerNote:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_note"
    .end annotation
.end field

.field private customerUserAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_user_agent"
    .end annotation
.end field

.field private dateCompleted:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_completed"
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

.field private datePaid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_paid"
    .end annotation
.end field

.field private discountTax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_tax"
    .end annotation
.end field

.field private discountTotal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discount_total"
    .end annotation
.end field

.field private feeLines:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fee_lines"
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

.field private lineItems:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "line_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;",
            ">;"
        }
    .end annotation
.end field

.field private links:Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_links"
    .end annotation
.end field

.field private number:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private orderKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_key"
    .end annotation
.end field

.field private parentId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent_id"
    .end annotation
.end field

.field private paymentMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_method"
    .end annotation
.end field

.field private paymentMethodTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_method_title"
    .end annotation
.end field

.field private pricesIncludeTax:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prices_include_tax"
    .end annotation
.end field

.field private refunds:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refunds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private shipping:Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping"
    .end annotation
.end field

.field private shippingLines:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_lines"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;",
            ">;"
        }
    .end annotation
.end field

.field private shippingTax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_tax"
    .end annotation
.end field

.field private shippingTotal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shipping_total"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private taxLines:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_lines"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private total:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field private totalTax:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_tax"
    .end annotation
.end field

.field private transactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->ORDER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->lineItems:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->taxLines:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingLines:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->feeLines:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->couponLines:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->refunds:Ljava/util/List;

    .line 821
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->paymentMethod:Ljava/lang/String;

    .line 822
    iput-object p2, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->paymentMethodTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBilling()Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->billing:Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;

    return-object v0
.end method

.method public getCartHash()Ljava/lang/String;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->cartHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCartTax()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->cartTax:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->couponLines:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedVia()Ljava/lang/String;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->createdVia:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/Integer;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCustomerIpAddress()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerNote()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerNote:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerUserAgent()Ljava/lang/String;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCompleted()Ljava/util/Date;
    .locals 2

    .line 637
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->ORDER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->dateCompleted:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 639
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 2

    .line 284
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->ORDER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->dateCreated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 2

    .line 307
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->ORDER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->dateModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatePaid()Ljava/util/Date;
    .locals 2

    .line 660
    :try_start_0
    sget-object v0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->ORDER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->datePaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiscountTax()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->discountTax:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountTotal()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->discountTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->feeLines:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLineItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->lineItems:Ljava/util/List;

    return-object v0
.end method

.method public getLinks()Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->links:Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderKey()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->orderKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/Integer;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->parentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentMethod()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->paymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodTitle()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->paymentMethodTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPricesIncludeTax()Ljava/lang/Boolean;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->pricesIncludeTax:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRefunds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->refunds:Ljava/util/List;

    return-object v0
.end method

.method public getShipping()Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shipping:Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;

    return-object v0
.end method

.method public getShippingLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingLines:Ljava/util/List;

    return-object v0
.end method

.method public getShippingTax()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingTax:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingTotal()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->taxLines:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()F
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->total:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->total:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getTotalTax()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->totalTax:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBilling(Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->billing:Lcom/sherdle/universal/providers/woocommerce/model/orders/Billing;

    return-void
.end method

.method public setCartHash(Ljava/lang/String;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->cartHash:Ljava/lang/String;

    return-void
.end method

.method public setCartTax(Ljava/lang/String;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->cartTax:Ljava/lang/String;

    return-void
.end method

.method public setCouponLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->couponLines:Ljava/util/List;

    return-void
.end method

.method public setCreatedVia(Ljava/lang/String;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->createdVia:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->currency:Ljava/lang/String;

    return-void
.end method

.method public setCustomerId(Ljava/lang/Integer;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerId:Ljava/lang/Integer;

    return-void
.end method

.method public setCustomerIpAddress(Ljava/lang/String;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerIpAddress:Ljava/lang/String;

    return-void
.end method

.method public setCustomerNote(Ljava/lang/String;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerNote:Ljava/lang/String;

    return-void
.end method

.method public setCustomerUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->customerUserAgent:Ljava/lang/String;

    return-void
.end method

.method public setDateCompleted(Ljava/lang/String;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->dateCompleted:Ljava/lang/String;

    return-void
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->dateCreated:Ljava/lang/String;

    return-void
.end method

.method public setDateModified(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->dateModified:Ljava/lang/String;

    return-void
.end method

.method public setDatePaid(Ljava/lang/String;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->datePaid:Ljava/lang/String;

    return-void
.end method

.method public setDiscountTax(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->discountTax:Ljava/lang/String;

    return-void
.end method

.method public setDiscountTotal(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->discountTotal:Ljava/lang/String;

    return-void
.end method

.method public setFeeLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 763
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->feeLines:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLineItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/LineItem;",
            ">;)V"
        }
    .end annotation

    .line 709
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->lineItems:Ljava/util/List;

    return-void
.end method

.method public setLinks(Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->links:Lcom/sherdle/universal/providers/woocommerce/model/orders/Links;

    return-void
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->number:Ljava/lang/Integer;

    return-void
.end method

.method public setOrderKey(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->orderKey:Ljava/lang/String;

    return-void
.end method

.method public setParentId(Ljava/lang/Integer;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->parentId:Ljava/lang/Integer;

    return-void
.end method

.method public setPaymentMethod(Ljava/lang/String;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->paymentMethod:Ljava/lang/String;

    return-void
.end method

.method public setPaymentMethodTitle(Ljava/lang/String;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->paymentMethodTitle:Ljava/lang/String;

    return-void
.end method

.method public setPricesIncludeTax(Ljava/lang/Boolean;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->pricesIncludeTax:Ljava/lang/Boolean;

    return-void
.end method

.method public setRefunds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 799
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->refunds:Ljava/util/List;

    return-void
.end method

.method public setShipping(Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shipping:Lcom/sherdle/universal/providers/woocommerce/model/orders/Shipping;

    return-void
.end method

.method public setShippingLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/woocommerce/model/orders/ShippingLine;",
            ">;)V"
        }
    .end annotation

    .line 745
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingLines:Ljava/util/List;

    return-void
.end method

.method public setShippingTax(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingTax:Ljava/lang/String;

    return-void
.end method

.method public setShippingTotal(Ljava/lang/String;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->shippingTotal:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->status:Ljava/lang/String;

    return-void
.end method

.method public setTaxLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->taxLines:Ljava/util/List;

    return-void
.end method

.method public setTotal(Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->total:Ljava/lang/String;

    return-void
.end method

.method public setTotalTax(Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->totalTax:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/model/orders/Order;->version:Ljava/lang/String;

    return-void
.end method
