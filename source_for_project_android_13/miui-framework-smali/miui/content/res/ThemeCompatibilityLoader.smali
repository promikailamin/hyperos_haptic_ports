.class public Lmiui/content/res/ThemeCompatibilityLoader;
.super Ljava/lang/Object;
.source "ThemeCompatibilityLoader.java"


# static fields
.field private static final blacklist COMPATIBILITY_FILE_NAME:Ljava/lang/String; = "theme_compatibility.xml"

.field public static final blacklist DATA_THEME_COMPATIBILITY_PATH:Ljava/lang/String; = "/data/system/theme_config/theme_compatibility.xml"

.field public static final blacklist SYSTEM_THEME_COMPATIBILITY_PATH:Ljava/lang/String; = "/product/media/theme/theme_compatibility.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "ThemeCompatibility"

.field private static final blacklist TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final blacklist TAG_PROPERTY1:Ljava/lang/String; = "property1"

.field private static final blacklist TAG_PROPERTY2:Ljava/lang/String; = "property2"

.field private static final blacklist TAG_PROPERTY3:Ljava/lang/String; = "property3"

.field private static final blacklist TAG_PROPERTYEXTRA:Ljava/lang/String; = "propertyExtra"

.field private static final blacklist TAG_RESOURCE_TYPE:Ljava/lang/String; = "resourceType"

.field private static final blacklist TAG_VERSION:Ljava/lang/String; = "version"

.field private static blacklist sVersionInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getConfigDocumentTree()Lorg/w3c/dom/Document;
    .registers 13

    .line 126
    const-string v0, "/data/system/theme_config/theme_compatibility.xml"

    invoke-static {v0}, Lmiui/content/res/ThemeCompatibilityLoader;->getVersion(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "updateVersion":I
    const-string v2, "/product/media/theme/theme_compatibility.xml"

    invoke-static {v2}, Lmiui/content/res/ThemeCompatibilityLoader;->getVersion(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "romVersion":I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 130
    .local v4, "prefPath":[Ljava/lang/String;
    const/4 v5, 0x0

    if-le v1, v3, :cond_18

    .line 131
    aput-object v0, v4, v5

    .line 132
    const/4 v0, 0x1

    aput-object v2, v4, v0

    goto :goto_1a

    .line 134
    :cond_18
    aput-object v2, v4, v5

    .line 137
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigDocumentTree(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThemeCompatibility"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    array-length v0, v4

    :goto_3d
    if-ge v5, v0, :cond_aa

    aget-object v6, v4, v5

    .line 139
    .local v6, "path":Ljava/lang/String;
    const/4 v7, 0x0

    .line 141
    .local v7, "is":Ljava/io/InputStream;
    :try_start_42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    parse file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 143
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 144
    .local v9, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x2000

    invoke-direct {v10, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v7, v10

    .line 145
    invoke-virtual {v9, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_71} :catch_77
    .catchall {:try_start_42 .. :try_end_71} :catchall_75

    .line 150
    invoke-static {v7}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 145
    return-object v0

    .line 150
    .end local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catchall_75
    move-exception v0

    goto :goto_a6

    .line 146
    :catch_77
    move-exception v8

    .line 147
    .local v8, "e":Ljava/lang/Exception;
    :try_start_78
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    invalid file format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_78 .. :try_end_9f} :catchall_75

    .line 150
    .end local v8    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    nop

    .line 138
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 150
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "is":Ljava/io/InputStream;
    :goto_a6
    invoke-static {v7}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    throw v0

    .line 153
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_aa
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getVersion(Ljava/lang/String;)I
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .line 104
    const-string v0, "</version>"

    const-string v1, "<version>"

    const/4 v2, 0x0

    .line 106
    .local v2, "cin":Ljava/io/BufferedReader;
    move-object v3, v1

    .line 107
    .local v3, "sTag":Ljava/lang/String;
    move-object v4, v0

    .line 108
    .local v4, "eTag":Ljava/lang/String;
    :try_start_7
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 109
    const/4 v5, 0x0

    .line 110
    .local v5, "line":Ljava/lang/String;
    :cond_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_44

    .line 111
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 112
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v6, v0

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_40} :catch_48
    .catchall {:try_start_7 .. :try_end_40} :catchall_75

    .line 120
    invoke-static {v2}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    return v0

    .line 120
    .end local v3    # "sTag":Ljava/lang/String;
    .end local v4    # "eTag":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    :cond_44
    :goto_44
    invoke-static {v2}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    goto :goto_73

    .line 116
    :catch_48
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_49
    const-string v1, "ThemeCompatibility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_49 .. :try_end_72} :catchall_75

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_44

    .line 122
    :goto_73
    const/4 v0, -0x1

    return v0

    .line 120
    :catchall_75
    move-exception v0

    invoke-static {v2}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    throw v0
.end method

.method static blacklist loadConfig()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;>;"
    const-string v1, "ThemeCompatibility"

    const-string v2, "START loading theme compatibility config."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_c
    invoke-static {}, Lmiui/content/res/ThemeCompatibilityLoader;->getConfigDocumentTree()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 60
    .local v2, "document":Lorg/w3c/dom/Document;
    if-eqz v2, :cond_75

    .line 61
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 62
    .local v3, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 64
    .local v4, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "index":I
    :goto_20
    if-ltz v5, :cond_75

    .line 65
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 66
    .local v7, "temp":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-eq v8, v6, :cond_2d

    goto :goto_72

    .line 68
    :cond_2d
    move-object v8, v7

    check-cast v8, Lorg/w3c/dom/Element;

    .line 69
    .local v8, "element":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "eleName":Ljava/lang/String;
    const-string v10, "version"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 71
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    .line 72
    if-gez v10, :cond_72

    goto :goto_75

    .line 74
    :cond_4a
    invoke-static {v9}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    move-result-object v10

    .line 75
    .local v10, "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    sget-object v11, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne v10, v11, :cond_53

    goto :goto_72

    .line 77
    :cond_53
    const-string v11, "item"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 78
    .local v11, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v11, :cond_72

    .line 79
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 80
    .local v12, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_60
    if-ge v13, v12, :cond_72

    .line 81
    invoke-interface {v11, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-static {v10, v14}, Lmiui/content/res/ThemeCompatibilityLoader;->parseCompatibilityInfo(Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;Lorg/w3c/dom/Node;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;

    move-result-object v14

    .line 82
    .local v14, "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    if-eqz v14, :cond_6f

    .line 83
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6f} :catch_76

    .line 80
    .end local v14    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    :cond_6f
    add-int/lit8 v13, v13, 0x1

    goto :goto_60

    .line 64
    .end local v7    # "temp":Lorg/w3c/dom/Node;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v9    # "eleName":Ljava/lang/String;
    .end local v10    # "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .end local v11    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v12    # "size":I
    .end local v13    # "i":I
    :cond_72
    :goto_72
    add-int/lit8 v5, v5, -0x1

    goto :goto_20

    .line 93
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "rootElement":Lorg/w3c/dom/Element;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "index":I
    :cond_75
    :goto_75
    goto :goto_94

    .line 90
    :catch_76
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_94
    sget v2, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    if-gez v2, :cond_9b

    .line 95
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "END loading: version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object v0
.end method

.method private static blacklist parseCompatibilityInfo(Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;Lorg/w3c/dom/Node;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .registers 15
    .param p0, "type"    # Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .line 157
    const/4 v0, 0x0

    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 158
    .local v1, "resourceType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "property1":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "property2":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "property3":Ljava/lang/String;
    const/4 v5, 0x0

    .line 160
    .local v5, "propertyExtra":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 161
    .local v6, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "i":I
    :goto_10
    if-ltz v7, :cond_7e

    .line 162
    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 163
    .local v8, "tmp":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "package"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 164
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    .line 165
    :cond_27
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "resourceType"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 166
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_7b

    .line 167
    :cond_38
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "property1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 168
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    .line 169
    :cond_49
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "property2"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 170
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_7b

    .line 171
    :cond_5a
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "property3"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 172
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_7b

    .line 173
    :cond_6b
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "propertyExtra"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 174
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 161
    .end local v8    # "tmp":Lorg/w3c/dom/Node;
    :cond_7b
    :goto_7b
    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    .line 178
    .end local v7    # "i":I
    :cond_7e
    const/4 v7, 0x0

    .line 179
    .local v7, "ret":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne p0, v8, :cond_cf

    .line 180
    new-instance v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    invoke-direct {v8}, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;-><init>()V

    .line 181
    .local v8, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 182
    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 183
    iput-object v2, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 184
    iput-object v3, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 185
    nop

    .line 186
    invoke-static {v4}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    goto :goto_a4

    :cond_a2
    move-object v9, v4

    goto :goto_a5

    :cond_a4
    :goto_a4
    const/4 v9, 0x0

    :goto_a5
    iput-object v9, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 187
    invoke-static {v5}, Lmiui/content/res/ThemeCompatibilityLoader;->splitItemString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 188
    .local v9, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_cd

    .line 189
    const/4 v10, 0x5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 190
    .local v10, "pConfig":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_bd
    array-length v12, v10

    if-ge v11, v12, :cond_cb

    .line 191
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v10, v11

    .line 190
    add-int/lit8 v11, v11, 0x1

    goto :goto_bd

    .line 193
    .end local v11    # "i":I
    :cond_cb
    iput-object v10, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    .line 196
    .end local v10    # "pConfig":[Ljava/lang/String;
    :cond_cd
    move-object v7, v8

    .end local v8    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v9    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_e6

    .line 197
    :cond_cf
    sget-object v8, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne p0, v8, :cond_e6

    .line 198
    new-instance v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    invoke-direct {v8}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;-><init>()V

    .line 199
    .local v8, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    .line 200
    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v9

    iput-object v9, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 201
    iput-object v2, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    .line 202
    iput-object v3, v8, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    .line 204
    move-object v7, v8

    goto :goto_e7

    .line 197
    .end local v8    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    :cond_e6
    :goto_e6
    nop

    .line 207
    :goto_e7
    if-eqz v7, :cond_10c

    invoke-virtual {v7}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->isValid()Z

    move-result v8

    if-nez v8, :cond_10c

    .line 208
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid compatibility info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ThemeCompatibility"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v7, 0x0

    .line 211
    :cond_10c
    return-object v7
.end method

.method private static blacklist splitItemString(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    move-object p0, v1

    .line 217
    if-eqz p0, :cond_36

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 218
    const-string v1, " |\t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    .line 219
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_33

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_33

    .line 222
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 227
    :cond_36
    return-object v0
.end method
