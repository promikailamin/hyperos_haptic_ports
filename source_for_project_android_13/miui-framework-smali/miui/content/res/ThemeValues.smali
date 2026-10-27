.class public Lmiui/content/res/ThemeValues;
.super Ljava/lang/Object;
.source "ThemeValues.java"


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final blacklist DIVIDER:Ljava/lang/String; = "|"

.field private static final blacklist TAG:Ljava/lang/String; = "ThemeValues"

.field private static final blacklist TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TRUE:Ljava/lang/String; = "true"


# instance fields
.field public blacklist mIntegerArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public blacklist mIntegers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mStringArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    .line 44
    return-void
.end method

.method private static blacklist getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq p1, v1, :cond_f

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p1, v1, :cond_a

    goto :goto_f

    .line 225
    :cond_a
    invoke-virtual {p1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 223
    :cond_f
    :goto_f
    const-string v0, "array"

    .line 227
    :goto_11
    invoke-virtual {p0, p2, v0, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, "id":I
    if-nez v1, :cond_2d

    const-string v2, "miui"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 229
    const-string v2, "miui.system"

    invoke-virtual {p0, p2, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 230
    if-nez v1, :cond_2d

    .line 231
    const-string v2, "android.miui"

    invoke-virtual {p0, p2, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 234
    :cond_2d
    return v1
.end method

.method private static blacklist getIdentifierWithFallback(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/content/res/ThemeValues;->getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, "id":I
    if-lez v1, :cond_12

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_12
    invoke-static {p3}, Lmiui/content/res/ThemeCompatibility;->getFallbackList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "fallbackList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v2, :cond_48

    .line 245
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 246
    .local v4, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v5, p1, :cond_47

    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    if-nez v5, :cond_47

    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 248
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 249
    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-static {p0, p1, v5, p3}, Lmiui/content/res/ThemeValues;->getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 250
    if-lez v1, :cond_47

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v4    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_47
    goto :goto_1c

    .line 256
    :cond_48
    return-object v0
.end method

.method private static blacklist ignoreResourceValue(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "resName"    # Ljava/lang/String;

    .line 268
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p1, v0, :cond_19

    .line 269
    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 270
    const-string v0, "statusbar_content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 271
    invoke-static {p0}, Lmiui/content/res/ThemeValues;->isOldVersionComponentTheme(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 273
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isOldVersionComponentTheme(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme/compatibility-v12/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static blacklist parseResourceArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .registers 8
    .param p0, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .line 173
    const-string v0, "item"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 175
    .local v0, "arrayItems":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    if-eqz v0, :cond_50

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move v3, v2

    .local v3, "size":I
    if-nez v2, :cond_11

    goto :goto_50

    .line 179
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_27

    .line 181
    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 183
    .end local v4    # "i":I
    :cond_27
    sget-object v4, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v4, :cond_44

    .line 184
    new-array v1, v3, [I

    .line 185
    .local v1, "integerArray":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2e
    if-ge v4, v3, :cond_43

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 188
    .end local v4    # "i":I
    :cond_43
    return-object v1

    .line 189
    .end local v1    # "integerArray":[I
    :cond_44
    sget-object v4, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v4, :cond_4f

    .line 190
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 192
    :cond_4f
    return-object v1

    .line 176
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "size":I
    :cond_50
    :goto_50
    return-object v1
.end method

.method private static blacklist parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p0, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p1, "value"    # Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "ret":Ljava/lang/Object;
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v1, :cond_1c

    .line 201
    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_41

    .line 202
    :cond_1c
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq p0, v1, :cond_38

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq p0, v1, :cond_38

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v1, :cond_29

    goto :goto_38

    .line 204
    :cond_29
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v1, :cond_32

    .line 205
    invoke-static {p1}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_41

    .line 206
    :cond_32
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v1, :cond_41

    .line 207
    move-object v0, p1

    goto :goto_41

    .line 203
    :cond_38
    :goto_38
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    :cond_41
    :goto_41
    return-object v0
.end method

.method public static blacklist parseThemeValues(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lmiui/content/res/ThemeValues;
    .registers 25
    .param p0, "resource"    # Landroid/content/res/MiuiResources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "defPkgName"    # Ljava/lang/String;

    .line 119
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    move-object v1, v0

    .line 121
    .local v1, "ret":Lmiui/content/res/ThemeValues;
    :try_start_6
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 122
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 123
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/BufferedInputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_12f
    .catchall {:try_start_6 .. :try_end_10} :catchall_127

    const/16 v4, 0x2000

    move-object/from16 v5, p1

    :try_start_14
    invoke-direct {v3, v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 124
    .local v3, "document":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 125
    .local v4, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 126
    .local v6, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "index":I
    :goto_29
    if-ltz v7, :cond_114

    .line 127
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 128
    .local v9, "temp":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v10, v8, :cond_41

    move-object/from16 v8, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_ff

    .line 130
    :cond_41
    move-object v10, v9

    check-cast v10, Lorg/w3c/dom/Element;

    .line 131
    .local v10, "element":Lorg/w3c/dom/Element;
    const-string v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5c

    move-object/from16 v8, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_ff

    .line 134
    :cond_5c
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, "elementName":Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v13

    .line 136
    .local v13, "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    sget-object v14, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_66} :catch_123
    .catchall {:try_start_14 .. :try_end_66} :catchall_11f

    if-ne v13, v14, :cond_74

    move-object/from16 v8, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_ff

    .line 137
    :cond_74
    move-object/from16 v14, p2

    :try_start_76
    invoke-static {v14, v13, v11}, Lmiui/content/res/ThemeValues;->ignoreResourceValue(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_86

    move-object/from16 v8, p0

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto/16 :goto_ff

    .line 139
    :cond_86
    const-string v15, "package"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 140
    .local v15, "pkg":Ljava/lang/String;
    invoke-static {v15}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v16
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_90} :catch_110
    .catchall {:try_start_76 .. :try_end_90} :catchall_10c

    if-eqz v16, :cond_94

    .line 141
    move-object/from16 v15, p2

    .line 144
    :cond_94
    move-object/from16 v8, p0

    :try_start_96
    invoke-static {v8, v13, v11, v15}, Lmiui/content/res/ThemeValues;->getIdentifierWithFallback(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v17

    .line 145
    .local v18, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_a9

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto :goto_ff

    .line 149
    :cond_a9
    move-object/from16 v17, v0

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v17, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v0, :cond_bc

    .line 150
    iget-object v0, v1, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 151
    .local v0, "saveMap":Ljava/util/Map;
    invoke-static {v13, v10}, Lmiui/content/res/ThemeValues;->parseResourceArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v21

    .local v19, "value":Ljava/lang/Object;
    goto :goto_f8

    .line 152
    .end local v0    # "saveMap":Ljava/util/Map;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_bc
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v0, :cond_cd

    .line 153
    iget-object v0, v1, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    .line 154
    .restart local v0    # "saveMap":Ljava/util/Map;
    invoke-static {v13, v10}, Lmiui/content/res/ThemeValues;->parseResourceArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v21

    .restart local v19    # "value":Ljava/lang/Object;
    goto :goto_f8

    .line 155
    .end local v0    # "saveMap":Ljava/util/Map;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_cd
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v0, :cond_e5

    .line 156
    iget-object v0, v1, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    .line 157
    .restart local v0    # "saveMap":Ljava/util/Map;
    move-object/from16 v19, v0

    .end local v0    # "saveMap":Ljava/util/Map;
    .local v19, "saveMap":Ljava/util/Map;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lmiui/content/res/ThemeValues;->parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v21

    .local v0, "value":Ljava/lang/Object;
    goto :goto_f8

    .line 159
    .end local v0    # "value":Ljava/lang/Object;
    .end local v19    # "saveMap":Ljava/util/Map;
    :cond_e5
    iget-object v0, v1, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 160
    .local v0, "saveMap":Ljava/util/Map;
    move-object/from16 v19, v0

    .end local v0    # "saveMap":Ljava/util/Map;
    .restart local v19    # "saveMap":Ljava/util/Map;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lmiui/content/res/ThemeValues;->parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v21

    .line 162
    .restart local v0    # "saveMap":Ljava/util/Map;
    .local v2, "value":Ljava/lang/Object;
    .local v19, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_f8
    move-object/from16 v20, v3

    move-object/from16 v3, v18

    .end local v18    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v20, "document":Lorg/w3c/dom/Document;
    invoke-static {v0, v3, v2}, Lmiui/content/res/ThemeValues;->saveIdentifierMap(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ff} :catch_10a
    .catchall {:try_start_96 .. :try_end_ff} :catchall_13e

    .line 126
    .end local v0    # "saveMap":Ljava/util/Map;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "temp":Lorg/w3c/dom/Node;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v15    # "pkg":Ljava/lang/String;
    :goto_ff
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    const/4 v8, 0x1

    goto/16 :goto_29

    .line 164
    .end local v4    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "list":Lorg/w3c/dom/NodeList;
    .end local v7    # "index":I
    .end local v17    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v20    # "document":Lorg/w3c/dom/Document;
    :catch_10a
    move-exception v0

    goto :goto_136

    .line 167
    :catchall_10c
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_13f

    .line 164
    :catch_110
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_136

    .line 126
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v3, "document":Lorg/w3c/dom/Document;
    .restart local v4    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v6    # "list":Lorg/w3c/dom/NodeList;
    .restart local v7    # "index":I
    :cond_114
    move-object/from16 v8, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "list":Lorg/w3c/dom/NodeList;
    .end local v7    # "index":I
    goto :goto_139

    .line 167
    :catchall_11f
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_12c

    .line 164
    :catch_123
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_134

    .line 167
    :catchall_127
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v5, p1

    :goto_12c
    move-object/from16 v14, p2

    goto :goto_13f

    .line 164
    :catch_12f
    move-exception v0

    move-object/from16 v8, p0

    move-object/from16 v5, p1

    :goto_134
    move-object/from16 v14, p2

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    :goto_136
    :try_start_136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_13e

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_139
    invoke-static/range {p1 .. p1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    nop

    .line 169
    return-object v1

    .line 167
    :catchall_13e
    move-exception v0

    :goto_13f
    invoke-static/range {p1 .. p1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    throw v0
.end method

.method private static blacklist saveIdentifierMap(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)V
    .registers 5
    .param p0, "saveMap"    # Ljava/util/Map;
    .param p1, "keyList"    # Ljava/util/List;
    .param p2, "value"    # Ljava/lang/Object;

    .line 213
    if-eqz p2, :cond_14

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_6

    .line 218
    :cond_14
    return-void
.end method


# virtual methods
.method public blacklist isEmpty()Z
    .registers 2

    .line 54
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 55
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 54
    :goto_23
    return v0
.end method

.method public blacklist mergeNewDefaultValueIfNeed(Landroid/content/res/MiuiResources;Ljava/lang/String;)V
    .registers 13
    .param p1, "resource"    # Landroid/content/res/MiuiResources;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 59
    invoke-static {p2}, Lmiui/content/res/ThemeCompatibility;->getNewDefaultValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    if-nez v0, :cond_7

    .line 61
    return-void

    .line 64
    :cond_7
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, "notFoundBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v2, "duplicateBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    .line 67
    .local v4, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iget-object v5, v4, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v6, v4, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    invoke-static {p1, v5, v6, p2}, Lmiui/content/res/ThemeValues;->getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_cb

    .line 68
    .local v5, "id":I
    const-string v6, "|"

    if-gtz v5, :cond_39

    .line 69
    :try_start_2d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    goto :goto_15

    .line 72
    :cond_39
    iget-object v7, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    iget-object v7, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_7c

    .line 76
    :cond_52
    iget-object v6, v4, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v7, v4, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    invoke-static {v6, v7}, Lmiui/content/res/ThemeValues;->parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 77
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_7b

    .line 78
    iget-object v7, v4, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v7, v8, :cond_6f

    .line 79
    iget-object v7, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 81
    :cond_6f
    iget-object v7, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v9, v6

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v4    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    .end local v5    # "id":I
    .end local v6    # "value":Ljava/lang/Object;
    :cond_7b
    :goto_7b
    goto :goto_15

    .line 73
    .restart local v4    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    .restart local v5    # "id":I
    :cond_7c
    :goto_7c
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    goto :goto_15

    .line 85
    .end local v4    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    .end local v5    # "id":I
    :cond_88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8c} :catch_cb

    const-string v4, "ThemeValues"

    if-eqz v3, :cond_aa

    .line 86
    :try_start_90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find newDefValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_aa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_ca

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customized theme has contain this value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ca} :catch_cb

    .line 92
    .end local v1    # "notFoundBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "duplicateBuilder":Ljava/lang/StringBuilder;
    :cond_ca
    goto :goto_cc

    .line 91
    :catch_cb
    move-exception v1

    .line 93
    :goto_cc
    return-void
.end method

.method public blacklist putAll(Lmiui/content/res/ThemeValues;)V
    .registers 4
    .param p1, "values"    # Lmiui/content/res/ThemeValues;

    .line 47
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 48
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 49
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51
    return-void
.end method
