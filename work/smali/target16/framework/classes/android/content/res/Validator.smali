.class public Landroid/content/res/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# instance fields
.field private final blacklist mElements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/content/res/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    return-void
.end method

.method private blacklist cleanUp()V
    .registers 2

    .line 42
    nop

    :goto_1
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 43
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    invoke-virtual {v0}, Landroid/content/res/Element;->recycle()V

    goto :goto_1

    .line 45
    :cond_15
    return-void
.end method

.method private blacklist validateComponentMetadata(Ljava/lang/String;)V
    .registers 4

    .line 110
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    .line 114
    iget-object v0, v0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_34

    .line 115
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    .line 116
    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Element;

    invoke-virtual {v1, p1}, Landroid/content/res/Element;->validateComponentMetadata(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 119
    :cond_34
    return-void
.end method


# virtual methods
.method public blacklist validate(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 57
    iget-object v2, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v1, v2, :cond_13

    .line 58
    return-void

    .line 60
    :cond_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_43

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/content/res/Element;->shouldValidate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 63
    invoke-static {p1}, Landroid/content/res/Element;->obtain(Ljava/lang/String;)Landroid/content/res/Element;

    move-result-object v0

    .line 64
    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Element;

    .line 65
    if-eqz v1, :cond_3d

    invoke-virtual {v1, p1}, Landroid/content/res/Element;->hasChild(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 67
    :try_start_34
    invoke-virtual {v1, v0}, Landroid/content/res/Element;->seen(Landroid/content/res/Element;)V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_37} :catch_38

    .line 71
    goto :goto_3d

    .line 68
    :catch_38
    move-exception p1

    .line 69
    invoke-direct {p0}, Landroid/content/res/Validator;->cleanUp()V

    .line 70
    throw p1

    .line 73
    :cond_3d
    :goto_3d
    iget-object p1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 75
    :cond_42
    goto :goto_5f

    :cond_43
    const/4 p1, 0x3

    if-ne v0, p1, :cond_5a

    iget-object p1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    if-ne v1, p1, :cond_5a

    .line 76
    iget-object p1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Element;

    invoke-virtual {p1}, Landroid/content/res/Element;->recycle()V

    goto :goto_5f

    .line 77
    :cond_5a
    if-ne v0, v3, :cond_5f

    .line 78
    invoke-direct {p0}, Landroid/content/res/Validator;->cleanUp()V

    .line 80
    :cond_5f
    :goto_5f
    return-void
.end method

.method public blacklist validateResStrAttr(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/CharSequence;)V
    .registers 5

    .line 87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le p1, v0, :cond_d

    .line 88
    return-void

    .line 90
    :cond_d
    iget-object p1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Element;

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Element;->validateResStrAttr(ILjava/lang/CharSequence;)V

    .line 91
    const/4 p1, 0x1

    if-ne p2, p1, :cond_22

    .line 92
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Validator;->validateComponentMetadata(Ljava/lang/String;)V

    .line 94
    :cond_22
    return-void
.end method

.method public blacklist validateStrAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le p1, v0, :cond_d

    .line 101
    return-void

    .line 103
    :cond_d
    iget-object p1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Element;

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Element;->validateStrAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo p1, "value"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 105
    invoke-direct {p0, p3}, Landroid/content/res/Validator;->validateComponentMetadata(Ljava/lang/String;)V

    .line 107
    :cond_24
    return-void
.end method
