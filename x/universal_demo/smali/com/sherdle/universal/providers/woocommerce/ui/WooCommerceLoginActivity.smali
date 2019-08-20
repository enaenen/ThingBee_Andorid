.class public Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WooCommerceLoginActivity.java"


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private mEmailView:Landroid/widget/EditText;

.field private mLoginFormView:Landroid/view/View;

.field private mPasswordView:Landroid/widget/EditText;

.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->attemptLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mLoginFormView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    return-object p0
.end method

.method private attemptLogin()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->isPasswordValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    const v3, 0x7f0f0063

    invoke-virtual {p0, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 125
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    const v3, 0x7f0f0060

    invoke-virtual {p0, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 129
    :cond_1
    invoke-direct {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->isEmailValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    const v3, 0x7f0f0062

    invoke-virtual {p0, v3}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 142
    :cond_3
    invoke-direct {p0, v4}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->showProgress(Z)V

    .line 143
    invoke-virtual {p0, v0, v2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->attemptLogin(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private isEmailValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPasswordValid(Ljava/lang/String;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showProgress(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xd

    if-lt v0, v3, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x10e0000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 166
    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v3, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mLoginFormView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v7, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$4;

    invoke-direct {v7, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$4;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Z)V

    .line 168
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 175
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$5;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Z)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mProgressView:Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mLoginFormView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/16 v1, 0x8

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method


# virtual methods
.method attemptLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 196
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "log"

    .line 197
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    const-string v1, "pwd"

    .line 198
    invoke-virtual {v0, v1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;->getLogin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const-string v2, "INFO"

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sherdle/universal/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x19

    .line 211
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 212
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    .line 213
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 216
    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v2, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$6;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Lcom/sherdle/universal/providers/woocommerce/model/RestAPI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public loginAttemptCompleted(Ljava/lang/Boolean;)V
    .locals 1

    .line 285
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$8;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b002b

    .line 58
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->setContentView(I)V

    const p1, 0x7f0901b9

    .line 60
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mEmailView:Landroid/widget/EditText;

    const p1, 0x7f090120

    .line 62
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    .line 63
    iget-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mPasswordView:Landroid/widget/EditText;

    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$1;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p1, 0x7f0901bf

    .line 74
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0901be

    .line 75
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$2;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$3;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900eb

    .line 95
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mLoginFormView:Landroid/view/View;

    const p1, 0x7f0900ec

    .line 96
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;->mProgressView:Landroid/view/View;

    return-void
.end method

.method public retrieveUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 254
    new-instance v0, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;

    invoke-direct {v0, p0}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;-><init>(Landroid/content/Context;)V

    .line 255
    new-instance v1, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity$7;-><init>(Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$WooCommerceBuilder;->getUsers(Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask$Callback;Ljava/lang/String;)Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 280
    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/woocommerce/WooCommerceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
