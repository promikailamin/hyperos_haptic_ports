.class public final Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;
.super Ljava/lang/Object;
.source "DisplayWindowSettingsXmlHelper.java"


# instance fields
.field public mIdentifierType:I

.field public final mSettings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mSettings:Ljava/util/Map;

    return-void
.end method

.method public static getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    .line 333
    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    return-object p2
.end method

.method public static getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 316
    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    .line 323
    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    return-object p2
.end method

.method public static readConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;)V
    .registers 4

    .line 309
    const-string v0, "identifier"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mIdentifierType:I

    .line 311
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readDisplay(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;)V
    .registers 8

    .line 257
    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 259
    new-instance v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;-><init>()V

    .line 260
    const-string v3, "windowingMode"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 262
    const-string v3, "userRotationMode"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 264
    const-string v3, "userRotation"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 266
    const-string v3, "forcedWidth"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 268
    const-string v3, "forcedHeight"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 270
    const-string v3, "forcedDensity"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 272
    const-string v3, "forcedDensityRatio"

    const/4 v5, 0x0

    invoke-interface {p0, v1, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensityRatio:F

    .line 274
    const-string v3, "forcedScalingMode"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 276
    const-string v3, "removeContentMode"

    invoke-static {p0, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 278
    const-string v3, "shouldShowWithInsecureKeyguard"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 280
    const-string v3, "shouldShowSystemDecors"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 282
    const-string v3, "shouldShowIme"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_7d

    .line 285
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    goto :goto_85

    .line 288
    :cond_7d
    const-string v3, "imePolicy"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 291
    :goto_85
    const-string v3, "fixedToUserRotation"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getIntegerAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 293
    const-string v3, "ignoreOrientationRequest"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 295
    const-string v3, "ignoreDisplayCutout"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    .line 297
    const-string v3, "dontMoveToTop"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 299
    const-string v3, "isHomeSupported"

    invoke-static {p0, v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->getBooleanAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    .line 301
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_b2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readSettings(Ljava/io/InputStream;)Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;
    .registers 9

    .line 206
    const-string v0, "DWSXmlHelper"

    new-instance v1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;-><init>()V

    .line 209
    :try_start_7
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 211
    :goto_b
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_16

    if-eq v3, v4, :cond_16

    goto :goto_b

    :cond_16
    if-ne v3, v5, :cond_72

    .line 220
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 221
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_6e

    const/4 v6, 0x3

    if-ne v5, v6, :cond_30

    .line 222
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_6e

    goto :goto_30

    :catchall_2c
    move-exception v0

    goto :goto_97

    :catch_2e
    move-exception v2

    goto :goto_7a

    :cond_30
    :goto_30
    if-eq v5, v6, :cond_1c

    const/4 v6, 0x4

    if-ne v5, v6, :cond_36

    goto :goto_1c

    .line 227
    :cond_36
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v6, "display"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 229
    invoke-static {v2, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->readDisplay(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;)V

    goto :goto_1c

    .line 230
    :cond_46
    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 231
    invoke-static {v2, v1}, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->readConfig(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;)V

    goto :goto_1c

    .line 233
    :cond_52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <display-settings>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_6d} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_6d} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_6d} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_6d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_6d} :catch_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_6d} :catch_2e
    .catchall {:try_start_7 .. :try_end_6d} :catchall_2c

    goto :goto_1c

    .line 244
    :cond_6e
    :try_start_6e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_96

    goto :goto_96

    .line 217
    :cond_72
    :try_start_72
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "no start tag found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7a
    .catch Ljava/lang/IllegalStateException; {:try_start_72 .. :try_end_7a} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_72 .. :try_end_7a} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_7a} :catch_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_7a} :catch_2e
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7a} :catch_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_72 .. :try_end_7a} :catch_2e
    .catchall {:try_start_72 .. :try_end_7a} :catchall_2c

    .line 241
    :goto_7a
    :try_start_7a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_7a .. :try_end_8e} :catchall_2c

    .line 244
    :try_start_8e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_91

    .line 249
    :catch_91
    iget-object p0, v1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mSettings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :catch_96
    :goto_96
    return-object v1

    .line 244
    :goto_97
    :try_start_97
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9a

    .line 247
    :catch_9a
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 350
    const-class v2, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_23

    .line 351
    :cond_10
    check-cast p1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;

    .line 352
    iget v2, p0, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mIdentifierType:I

    iget v3, p1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mIdentifierType:I

    if-ne v2, v3, :cond_23

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mSettings:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mSettings:Ljava/util/Map;

    .line 353
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileData{mIdentifierType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mIdentifierType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsXmlHelper$FileData;->mSettings:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
