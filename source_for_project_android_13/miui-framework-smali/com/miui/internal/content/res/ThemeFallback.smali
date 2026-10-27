.class public Lcom/miui/internal/content/res/ThemeFallback;
.super Ljava/lang/Object;
.source "ThemeFallback.java"


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field private static final blacklist ATTR_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field public blacklist mFallbackInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist parseThemeFallback(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeFallback;
    .registers 24
    .param p0, "resource"    # Landroid/content/res/MiuiResources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "defPkgName"    # Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/miui/internal/content/res/ThemeFallback;

    invoke-direct {v0}, Lcom/miui/internal/content/res/ThemeFallback;-><init>()V

    move-object v1, v0

    .line 44
    .local v1, "ret":Lcom/miui/internal/content/res/ThemeFallback;
    :try_start_6
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 45
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 46
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/BufferedInputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_e9
    .catchall {:try_start_6 .. :try_end_10} :catchall_e3

    const/16 v4, 0x2000

    move-object/from16 v5, p1

    :try_start_14
    invoke-direct {v3, v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 47
    .local v3, "document":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 48
    .local v4, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 49
    .local v6, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "index":I
    :goto_29
    if-ltz v7, :cond_d6

    .line 50
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 51
    .local v9, "temp":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v10, v8, :cond_3f

    move-object/from16 v8, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_cb

    .line 53
    :cond_3f
    move-object v10, v9

    check-cast v10, Lorg/w3c/dom/Element;

    .line 54
    .local v10, "element":Lorg/w3c/dom/Element;
    const-string v11, "name"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "name":Ljava/lang/String;
    invoke-static {v11}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_58

    move-object/from16 v8, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_cb

    .line 57
    :cond_58
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 58
    .local v12, "elementName":Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v13

    .line 59
    .local v13, "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    sget-object v14, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v14, :cond_6d

    move-object/from16 v8, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto :goto_cb

    .line 61
    :cond_6d
    const-string v14, "package"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, "pkg":Ljava/lang/String;
    invoke-static {v14}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7b

    .line 63
    move-object/from16 v14, p2

    .line 66
    :cond_7b
    sget-object v15, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v13, v15, :cond_c3

    .line 67
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "value":Ljava/lang/String;
    invoke-static {v15}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_ba

    .line 69
    new-instance v16, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    invoke-direct/range {v16 .. v16}, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;-><init>()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_8e} :catch_e1
    .catchall {:try_start_14 .. :try_end_8e} :catchall_df

    move-object/from16 v17, v16

    .line 70
    .local v17, "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    move-object/from16 v8, p2

    move-object/from16 v20, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    .local v0, "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .local v17, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_98
    iput-object v8, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 71
    move-object/from16 v18, v2

    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v18, "builder":Ljavax/xml/parsers/DocumentBuilder;
    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iput-object v2, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 72
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 73
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 74
    iput-object v14, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 75
    iget-object v2, v1, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    move-object/from16 v19, v3

    .end local v3    # "document":Lorg/w3c/dom/Document;
    .local v19, "document":Lorg/w3c/dom/Document;
    iget-object v3, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b7} :catch_b8
    .catchall {:try_start_98 .. :try_end_b7} :catchall_f6

    goto :goto_cb

    .line 79
    .end local v0    # "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v4    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "list":Lorg/w3c/dom/NodeList;
    .end local v7    # "index":I
    .end local v9    # "temp":Lorg/w3c/dom/Node;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v17    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v19    # "document":Lorg/w3c/dom/Document;
    :catch_b8
    move-exception v0

    goto :goto_ee

    .line 68
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v6    # "list":Lorg/w3c/dom/NodeList;
    .restart local v7    # "index":I
    .restart local v9    # "temp":Lorg/w3c/dom/Node;
    .restart local v10    # "element":Lorg/w3c/dom/Element;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "elementName":Ljava/lang/String;
    .restart local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v15    # "value":Ljava/lang/String;
    :cond_ba
    move-object/from16 v8, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .restart local v17    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    goto :goto_cb

    .line 66
    .end local v15    # "value":Ljava/lang/String;
    .end local v17    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "document":Lorg/w3c/dom/Document;
    :cond_c3
    move-object/from16 v8, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 49
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "temp":Lorg/w3c/dom/Node;
    .end local v10    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "elementName":Ljava/lang/String;
    .end local v13    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v14    # "pkg":Ljava/lang/String;
    .restart local v17    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v18    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    :goto_cb
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v8, 0x1

    goto/16 :goto_29

    .end local v17    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v18    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "document":Lorg/w3c/dom/Document;
    :cond_d6
    move-object/from16 v8, p2

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "list":Lorg/w3c/dom/NodeList;
    .end local v7    # "index":I
    goto :goto_f1

    .line 82
    :catchall_df
    move-exception v0

    goto :goto_e6

    .line 79
    :catch_e1
    move-exception v0

    goto :goto_ec

    .line 82
    :catchall_e3
    move-exception v0

    move-object/from16 v5, p1

    :goto_e6
    move-object/from16 v8, p2

    goto :goto_f7

    .line 79
    :catch_e9
    move-exception v0

    move-object/from16 v5, p1

    :goto_ec
    move-object/from16 v8, p2

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    :goto_ee
    :try_start_ee
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f6

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f1
    invoke-static/range {p1 .. p1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    nop

    .line 84
    return-object v1

    .line 82
    :catchall_f6
    move-exception v0

    :goto_f7
    invoke-static/range {p1 .. p1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    throw v0
.end method
