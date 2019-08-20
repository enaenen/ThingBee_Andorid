.class Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;
.super Ljava/lang/Object;
.source "HtmlToPlainText.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/examples/HtmlToPlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormattingVisitor"
.end annotation


# static fields
.field private static final maxWidth:I = 0x50


# instance fields
.field private accum:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lorg/jsoup/examples/HtmlToPlainText;

.field private width:I


# direct methods
.method private constructor <init>(Lorg/jsoup/examples/HtmlToPlainText;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->this$0:Lorg/jsoup/examples/HtmlToPlainText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/examples/HtmlToPlainText;Lorg/jsoup/examples/HtmlToPlainText$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;-><init>(Lorg/jsoup/examples/HtmlToPlainText;)V

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 7

    const-string v0, "\n"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iput v1, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :cond_0
    const-string v0, " "

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, " "

    aput-object v4, v3, v1

    const-string v4, "\n"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    add-int/2addr v0, v3

    const/16 v3, 0x50

    if-le v0, v3, :cond_6

    const-string v0, "\\s+"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 107
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 108
    aget-object v4, p1, v0

    .line 109
    array-length v5, p1

    sub-int/2addr v5, v2

    if-ne v0, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    add-int/2addr v5, v6

    if-le v5, v3, :cond_5

    .line 113
    iget-object v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    goto :goto_2

    .line 116
    :cond_5
    iget-object v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    iput v5, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_6
    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->width:I

    :cond_7
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p2

    .line 78
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "li"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\n * "

    .line 81
    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "dt"

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "  "

    .line 83
    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    .line 84
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "p"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "h1"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "h2"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "h3"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "h4"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "h5"

    aput-object v1, p1, v0

    const/4 v0, 0x6

    const-string v1, "tr"

    aput-object v1, p1, v0

    invoke-static {p2, p1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\n"

    .line 85
    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 5

    .line 90
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x9

    .line 91
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "br"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dd"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "dt"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "p"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "h1"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "h2"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "h3"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "h4"

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "h5"

    const/16 v4, 0x8

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\n"

    .line 92
    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "a"

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, " <%s>"

    .line 94
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "href"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->append(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/jsoup/examples/HtmlToPlainText$FormattingVisitor;->accum:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
