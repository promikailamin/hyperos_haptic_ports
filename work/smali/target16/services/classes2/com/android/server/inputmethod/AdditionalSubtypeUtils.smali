.class public abstract Lcom/android/server/inputmethod/AdditionalSubtypeUtils;
.super Ljava/lang/Object;
.source "AdditionalSubtypeUtils.java"


# direct methods
.method public static getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;
    .registers 3

    .line 106
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "subtypes.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    new-instance p0, Landroid/util/AtomicFile;

    const-string v1, "input-subtypes"

    invoke-direct {p0, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInputMethodDir(I)Ljava/io/File;
    .registers 3

    if-nez p0, :cond_f

    .line 93
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13

    .line 94
    :cond_f
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 95
    :goto_13
    new-instance v0, Ljava/io/File;

    const-string v1, "inputmethod"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .registers 2

    .line 228
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 231
    invoke-static {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->loadFromFile(Landroid/util/AtomicFile;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object p0

    return-object p0

    .line 233
    :cond_13
    sget-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-object p0
.end method

.method public static loadFromFile(Landroid/util/AtomicFile;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .registers 23

    .line 238
    const-string v0, "1"

    const-string v1, "AdditionalSubtypeUtils"

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 239
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_1f6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_1f6
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_1f6

    .line 240
    :try_start_d
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v4

    .line 241
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    :goto_15
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_29

    if-eq v5, v6, :cond_29

    .line 244
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    goto :goto_15

    :catchall_20
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v1

    :goto_26
    move-object v1, v0

    goto/16 :goto_1eb

    .line 246
    :cond_29
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 247
    const-string/jumbo v8, "subtypes"

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 250
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    const/4 v8, 0x0

    move-object v9, v8

    move-object v10, v9

    .line 253
    :goto_3d
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_52

    .line 254
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v5, :cond_4b

    goto :goto_52

    :cond_4b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v1

    goto/16 :goto_1d6

    :cond_52
    :goto_52
    if-eq v11, v6, :cond_4b

    if-eq v11, v7, :cond_61

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object v5, v8

    move-object v8, v9

    move-object v2, v1

    goto/16 :goto_1ab

    .line 258
    :cond_61
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 259
    const-string v12, "imi"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_91

    .line 260
    const-string v9, "id"

    invoke-interface {v4, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 262
    const-string v11, "Invalid imi id found in subtypes.xml"

    invoke-static {v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 265
    :cond_7f
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-virtual {v2, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object v5, v8

    move-object v2, v1

    goto/16 :goto_1ca

    .line 267
    :cond_91
    const-string/jumbo v12, "subtype"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c0

    .line 268
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_9e
    .catchall {:try_start_d .. :try_end_9e} :catchall_20

    if-nez v11, :cond_a2

    if-nez v10, :cond_af

    :cond_a2
    move-object/from16 v20, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object v5, v8

    move-object/from16 v21, v9

    goto/16 :goto_193

    .line 272
    :cond_af
    :try_start_af
    const-string v11, "icon"

    invoke-interface {v4, v8, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 273
    const-string v12, "label"

    invoke-interface {v4, v8, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 274
    const-string/jumbo v13, "nameOverride"

    invoke-interface {v4, v8, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 276
    const-string v14, "layoutLabel"

    invoke-interface {v4, v8, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 277
    const-string v15, "layoutLabelNonLocalized"

    invoke-interface {v4, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 279
    const-string/jumbo v6, "pkLanguageTag"

    invoke-interface {v4, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    const-string/jumbo v7, "pkLayoutType"

    invoke-interface {v4, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_dc
    .catchall {:try_start_af .. :try_end_dc} :catchall_18d

    move-object/from16 v16, v2

    .line 283
    :try_start_de
    const-string v2, "imeSubtypeLocale"

    .line 284
    invoke-interface {v4, v8, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_187

    move-object/from16 v17, v3

    .line 285
    :try_start_e6
    const-string v3, "languageTag"

    .line 286
    invoke-interface {v4, v8, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move/from16 v18, v5

    .line 287
    const-string v5, "imeSubtypeMode"

    .line 288
    invoke-interface {v4, v8, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v7

    .line 289
    const-string v7, "imeSubtypeExtraValue"

    .line 290
    invoke-interface {v4, v8, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_fc
    .catchall {:try_start_e6 .. :try_end_fc} :catchall_183

    move-object/from16 v20, v1

    .line 291
    :try_start_fe
    const-string v1, "isAuxiliary"

    .line 292
    invoke-interface {v4, v8, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v21, v9

    .line 293
    const-string v9, "isAsciiCapable"

    .line 294
    invoke-interface {v4, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 293
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 296
    new-instance v8, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 297
    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v8

    .line 298
    invoke-virtual {v8, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLayoutLabelResource(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v8

    if-nez v6, :cond_12d

    const/4 v12, 0x0

    goto :goto_132

    .line 300
    :cond_12d
    new-instance v12, Landroid/icu/util/ULocale;

    invoke-direct {v12, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    :goto_132
    if-nez v19, :cond_13d

    .line 301
    const-string v6, ""

    goto :goto_13f

    :catchall_137
    move-exception v0

    :goto_138
    move-object v1, v0

    move-object/from16 v2, v20

    goto/16 :goto_1eb

    :cond_13d
    move-object/from16 v6, v19

    .line 299
    :goto_13f
    invoke-virtual {v8, v12, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setPhysicalKeyboardHint(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 302
    invoke-virtual {v6, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v6

    .line 303
    invoke-virtual {v6, v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 304
    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 305
    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 306
    invoke-virtual {v2, v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v2

    .line 307
    invoke-virtual {v2, v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v1, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v1

    .line 309
    const-string/jumbo v2, "subtypeId"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_16d

    .line 312
    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    :cond_16d
    if-eqz v13, :cond_172

    .line 315
    invoke-virtual {v1, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameOverride(Ljava/lang/CharSequence;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    :cond_172
    if-eqz v15, :cond_177

    .line 318
    invoke-virtual {v1, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLayoutLabelNonLocalized(Ljava/lang/CharSequence;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 320
    :cond_177
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17e
    .catchall {:try_start_fe .. :try_end_17e} :catchall_137

    move-object/from16 v2, v20

    move-object/from16 v8, v21

    goto :goto_1c9

    :catchall_183
    move-exception v0

    move-object/from16 v20, v1

    goto :goto_138

    :catchall_187
    move-exception v0

    move-object/from16 v20, v1

    :goto_18a
    move-object/from16 v17, v3

    goto :goto_138

    :catchall_18d
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v16, v2

    goto :goto_18a

    .line 269
    :goto_193
    :try_start_193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME uninstalled or not valid.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v21

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1a6
    .catchall {:try_start_193 .. :try_end_1a6} :catchall_1bb

    move-object/from16 v2, v20

    :try_start_1a8
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_1b8

    :goto_1ab
    move-object v1, v2

    move-object v9, v8

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object v8, v5

    move/from16 v5, v18

    goto/16 :goto_3d

    :catchall_1b8
    move-exception v0

    goto/16 :goto_26

    :catchall_1bb
    move-exception v0

    move-object/from16 v2, v20

    goto/16 :goto_26

    :cond_1c0
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object v5, v8

    move-object v8, v9

    move-object v2, v1

    :goto_1c9
    move-object v9, v8

    :goto_1ca
    move-object v1, v2

    move-object v8, v5

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v5, v18

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_3d

    :goto_1d6
    if-eqz v17, :cond_1ff

    .line 323
    :try_start_1d8
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_1db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d8 .. :try_end_1db} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1d8 .. :try_end_1db} :catch_1dc

    goto :goto_1ff

    :catch_1dc
    move-exception v0

    goto :goto_1fa

    :cond_1de
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v1

    .line 248
    :try_start_1e3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Xml doesn\'t start with subtypes"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1eb
    .catchall {:try_start_1e3 .. :try_end_1eb} :catchall_1b8

    :goto_1eb
    if-eqz v17, :cond_1f5

    .line 239
    :try_start_1ed
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_1f0
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_1f1

    goto :goto_1f5

    :catchall_1f1
    move-exception v0

    :try_start_1f2
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f5
    :goto_1f5
    throw v1
    :try_end_1f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f2 .. :try_end_1f6} :catch_1dc
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_1f6} :catch_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1f2 .. :try_end_1f6} :catch_1dc

    :catch_1f6
    move-exception v0

    move-object/from16 v16, v2

    move-object v2, v1

    .line 324
    :goto_1fa
    const-string v1, "Error reading subtypes"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    :cond_1ff
    :goto_1ff
    invoke-static/range {v16 .. v16}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    return-object v0
.end method

.method public static save(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;I)V
    .registers 5

    .line 124
    invoke-static {p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object p2

    .line 126
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->isEmpty()Z

    move-result v0

    const-string v1, "AdditionalSubtypeUtils"

    if-eqz v0, :cond_42

    .line 127
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_41

    .line 131
    :cond_13
    invoke-static {p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 133
    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    .line 135
    :cond_20
    invoke-static {p2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_41

    .line 136
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_41

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to delete the empty parent directory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    :goto_41
    return-void

    .line 143
    :cond_42
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_63

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to create a parent directory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_63
    invoke-static {p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->saveToFile(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;Landroid/util/AtomicFile;)V

    return-void
.end method

.method public static saveToFile(Lcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;Landroid/util/AtomicFile;)V
    .registers 16

    .line 154
    const-string/jumbo v0, "subtype"

    const-string v1, "imi"

    const-string/jumbo v2, "subtypes"

    const-string v3, "AdditionalSubtypeUtils"

    const/4 v4, 0x1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodMap;->size()I

    move-result v5

    if-lez v5, :cond_15

    move v5, v4

    goto :goto_16

    :cond_15
    const/4 v5, 0x0

    :goto_16
    const/4 v6, 0x0

    .line 157
    :try_start_17
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_14a
    .catchall {:try_start_17 .. :try_end_1b} :catchall_148

    .line 158
    :try_start_1b
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    .line 159
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v6, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 160
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v9, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 161
    invoke-interface {v8, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->keySet()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v5, :cond_65

    .line 163
    invoke-virtual {p1, v9}, Lcom/android/server/inputmethod/InputMethodMap;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_65

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IME uninstalled or not valid.: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_5d
    move-exception p0

    move-object v6, v7

    goto/16 :goto_159

    :catch_61
    move-exception p0

    move-object v6, v7

    goto/16 :goto_14b

    .line 167
    :cond_65
    invoke-virtual {p0, v9}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_80

    .line 169
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Null subtype list for IME "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 172
    :cond_80
    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const-string v11, "id"

    invoke-interface {v8, v6, v11, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_136

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    .line 175
    invoke-interface {v8, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v11

    if-eqz v11, :cond_ab

    .line 177
    const-string/jumbo v11, "subtypeId"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    :cond_ab
    const-string v11, "icon"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const-string v11, "label"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string/jumbo v11, "nameOverride"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getNameOverride()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string v11, "layoutLabel"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutLabelResource()I

    move-result v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const-string v11, "layoutLabelNonLocalized"

    .line 184
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutLabelNonLocalized()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 183
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v11

    if-eqz v11, :cond_f1

    .line 187
    const-string/jumbo v12, "pkLanguageTag"

    .line 188
    invoke-virtual {v11}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    .line 187
    invoke-interface {v8, v6, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    :cond_f1
    const-string/jumbo v11, "pkLayoutType"

    .line 191
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    move-result-object v12

    .line 190
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const-string v11, "imeSubtypeLocale"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string v11, "languageTag"

    .line 195
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v12

    .line 194
    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string v11, "imeSubtypeMode"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const-string v11, "imeSubtypeExtraValue"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string v11, "isAuxiliary"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    invoke-interface {v8, v6, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string v11, "isAsciiCapable"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v10

    invoke-interface {v8, v6, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    invoke-interface {v8, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_8c

    .line 202
    :cond_136
    invoke-interface {v8, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_34

    .line 204
    :cond_13b
    invoke-interface {v8, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 206
    invoke-virtual {p2, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_144} :catch_61
    .catchall {:try_start_1b .. :try_end_144} :catchall_5d

    .line 213
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_148
    move-exception p0

    goto :goto_159

    :catch_14a
    move-exception p0

    .line 208
    :goto_14b
    :try_start_14b
    const-string p1, "Error writing subtypes"

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v6, :cond_155

    .line 210
    invoke-virtual {p2, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_155
    .catchall {:try_start_14b .. :try_end_155} :catchall_148

    .line 213
    :cond_155
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_159
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 214
    throw p0
.end method
