.class Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;
.super Ljava/lang/Object;
.source "KeyProviderManager.java"

# interfaces
.implements Lcom/android/internal/util/custom/IKeyboxProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/custom/KeyProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultKeyboxProvider"
.end annotation


# instance fields
.field private final blacklist keyboxData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    if-nez v0, :cond_18

    .line 46
    const-string v0, "KeyProviderManager"

    const-string v1, "Failed to get application context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 50
    :cond_18
    invoke-direct {p0, v0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->loadFromXmlSetting(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 51
    invoke-direct {p0, v0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->loadFromConfigArray(Landroid/content/Context;)V

    .line 53
    :cond_21
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/custom/KeyProviderManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;-><init>()V

    return-void
.end method

.method private static blacklist getApplicationContext()Landroid/content/Context;
    .registers 3

    .line 157
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 158
    :catch_9
    move-exception v0

    .line 159
    const-string v1, "KeyProviderManager"

    const-string v2, "Error getting application context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCertificateChain(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".CERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 199
    iget-object v3, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_3f
    goto :goto_f

    .line 202
    :cond_40
    new-instance p1, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 203
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 204
    return-object p1
.end method

.method static synthetic blacklist lambda$getCertificateChain$0(I)[Ljava/lang/String;
    .registers 1

    .line 202
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private blacklist loadFromConfigArray(Landroid/content/Context;)V
    .registers 9

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107003d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_29

    aget-object v3, p1, v2

    .line 144
    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 145
    array-length v4, v3

    if-ne v4, v5, :cond_26

    .line 146
    iget-object v4, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    aget-object v5, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 150
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->hasKeybox()Z

    move-result p1

    if-nez p1, :cond_36

    .line 151
    const-string p1, "KeyProviderManager"

    const-string v0, "Incomplete keybox provided by overlays"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_36
    return-void
.end method

.method private blacklist loadFromXmlSetting(Landroid/content/Context;)Z
    .registers 12

    .line 57
    const-string v0, "KeyProviderManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "keybox_data"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    if-eqz p1, :cond_180

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_180

    .line 60
    :cond_1b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 63
    nop

    .line 64
    nop

    .line 65
    nop

    .line 67
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x0

    move v4, v1

    move v6, v4

    move-object v5, v3

    :goto_32
    const/4 v7, 0x1

    if-eq p1, v7, :cond_166

    .line 68
    const/4 v8, 0x2

    if-ne p1, v8, :cond_160

    .line 69
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_188

    :cond_43
    goto :goto_6b

    :sswitch_44
    const-string v8, "NumberOfKeyboxes"

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    move v8, v1

    goto :goto_6c

    :sswitch_4e
    const-string v9, "PrivateKey"

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_6c

    :sswitch_57
    const-string v8, "Key"

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    move v8, v7

    goto :goto_6c

    :sswitch_61
    const-string v8, "Certificate"

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_67} :catch_181

    if-eqz p1, :cond_43

    const/4 v8, 0x3

    goto :goto_6c

    :goto_6b
    const/4 v8, -0x1

    :goto_6c
    const-string/jumbo p1, "pem"

    const-string v9, "format"

    packed-switch v8, :pswitch_data_19a

    goto/16 :goto_160

    .line 108
    :pswitch_76
    :try_start_76
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_97

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Certificate format: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v1

    .line 113
    :cond_97
    if-eqz v5, :cond_160

    .line 114
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 115
    add-int/lit8 v6, v6, 0x1

    .line 116
    iget-object p1, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".CERT_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_160

    .line 95
    :pswitch_c4
    invoke-interface {v2, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e5

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PrivateKey format: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v1

    .line 100
    :cond_e5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 101
    if-eqz v5, :cond_160

    .line 102
    iget-object p1, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".PRIV"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_160

    .line 87
    :pswitch_10b
    const-string p1, "algorithm"

    invoke-interface {v2, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v5, "ecdsa"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11d

    const-string p1, "EC"

    move-object v5, p1

    goto :goto_12b

    .line 89
    :cond_11d
    const-string/jumbo v5, "rsa"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12a

    const-string p1, "RSA"

    move-object v5, p1

    goto :goto_12b

    .line 90
    :cond_12a
    move-object v5, v3

    .line 91
    :goto_12b
    nop

    .line 92
    move v6, v1

    goto :goto_160

    .line 72
    :pswitch_12e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_131} :catch_181

    .line 73
    nop

    .line 75
    :try_start_132
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 76
    if-eq p1, v7, :cond_157

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NumberOfKeyboxes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_156} :catch_159
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_156} :catch_181

    .line 78
    return v1

    .line 83
    :cond_157
    move v4, v7

    goto :goto_160

    .line 80
    :catch_159
    move-exception p1

    .line 81
    :try_start_15a
    const-string v2, "Failed to parse NumberOfKeyboxes"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    return v1

    .line 67
    :cond_160
    :goto_160
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto/16 :goto_32

    .line 124
    :cond_166
    if-nez v4, :cond_16e

    .line 125
    const-string p1, "Missing <NumberOfKeyboxes> in keybox XML"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v1

    .line 129
    :cond_16e
    invoke-virtual {p0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->hasKeybox()Z

    move-result p1

    if-nez p1, :cond_17a

    .line 130
    const-string p1, "Failed to load keybox from XML setting"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 134
    :cond_17a
    const-string p1, "Loaded keybox from XML setting"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_17f} :catch_181

    .line 135
    return v7

    .line 58
    :cond_180
    :goto_180
    return v1

    .line 136
    :catch_181
    move-exception p1

    .line 137
    const-string v2, "XML keybox load failed"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    return v1

    :sswitch_data_188
    .sparse-switch
        -0x28371689 -> :sswitch_61
        0x1263f -> :sswitch_57
        0x6ff49fc -> :sswitch_4e
        0x340da7fa -> :sswitch_44
    .end sparse-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_10b
        :pswitch_c4
        :pswitch_76
    .end packed-switch
.end method


# virtual methods
.method public blacklist getEcCertificateChain()[Ljava/lang/String;
    .registers 2

    .line 187
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->getCertificateChain(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEcPrivateKey()Ljava/lang/String;
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    const-string v1, "EC.PRIV"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRsaCertificateChain()[Ljava/lang/String;
    .registers 2

    .line 192
    const-string v0, "RSA"

    invoke-direct {p0, v0}, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->getCertificateChain(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRsaPrivateKey()Ljava/lang/String;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    const-string v1, "RSA.PRIV"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasKeybox()Z
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    const-string v1, "EC.PRIV"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    const-string v2, "RSA.PRIV"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2e

    .line 169
    :cond_16
    iget-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    const-string v2, "EC.CERT_1"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/internal/util/custom/KeyProviderManager$DefaultKeyboxProvider;->keyboxData:Ljava/util/Map;

    const-string v2, "RSA.CERT_1"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2d

    .line 172
    :cond_2b
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_2d
    :goto_2d
    return v1

    .line 167
    :cond_2e
    :goto_2e
    return v1
.end method
