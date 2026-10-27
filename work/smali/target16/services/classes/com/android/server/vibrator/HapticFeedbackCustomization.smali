.class public final Lcom/android/server/vibrator/HapticFeedbackCustomization;
.super Ljava/lang/Object;
.source "HapticFeedbackCustomization.java"


# instance fields
.field public final mHapticCustomizations:Landroid/util/SparseArray;

.field public final mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

.field public final mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

.field public final mHapticCustomizationsForUsageGestureInput:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V
    .registers 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromFile(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_14

    const v0, 0x1170009

    .line 133
    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v0

    .line 136
    :cond_14
    iput-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    const v0, 0x117000a

    .line 140
    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    const v0, 0x117000b

    .line 143
    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    const v0, 0x117000c

    .line 149
    invoke-static {p1, p2, v0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForUsageGestureInput:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    .line 162
    iput-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    .line 163
    iput-object p3, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    .line 164
    iput-object p4, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForUsageGestureInput:Landroid/util/SparseArray;

    return-void
.end method

.method public static loadCustomizedFeedbackVibrationFromFile(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;
    .registers 3

    .line 204
    const-string v0, "HapticFeedbackCustomization"

    :try_start_2
    invoke-static {p0}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->readCustomizationFile(Landroid/content/res/Resources;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    if-nez p0, :cond_15

    .line 206
    const-string p0, "No loadable haptic feedback customization from file."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    :catch_13
    move-exception p0

    goto :goto_1a

    .line 209
    :cond_15
    invoke-static {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object p0
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_19} :catch_13
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_2 .. :try_end_19} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_13

    return-object p0

    .line 211
    :goto_1a
    const-string p1, "Error parsing haptic feedback customizations from file"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public static loadCustomizedFeedbackVibrationFromRes(Landroid/content/res/Resources;Landroid/os/VibratorInfo;I)Landroid/util/SparseArray;
    .registers 4

    .line 226
    const-string v0, "HapticFeedbackCustomization"

    :try_start_2
    invoke-static {p0, p2}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->readCustomizationResources(Landroid/content/res/Resources;I)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    if-nez p0, :cond_15

    .line 228
    const-string p0, "No loadable haptic feedback customization from res."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    :catch_13
    move-exception p0

    goto :goto_1a

    .line 231
    :cond_15
    invoke-static {p0, p1}, Lcom/android/server/vibrator/HapticFeedbackCustomization;->parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;

    move-result-object p0
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_19} :catch_13
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_2 .. :try_end_19} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_13

    return-object p0

    .line 233
    :goto_1a
    const-string p1, "Error parsing haptic feedback customizations from res"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public static parseVibrations(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/os/VibratorInfo;)Landroid/util/SparseArray;
    .registers 15

    .line 287
    const-string v0, "haptic-feedback-constants"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 288
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 289
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 291
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 292
    :goto_14
    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 293
    const-string v4, "constant"

    invoke-static {p0, v4}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 294
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    .line 297
    const-string v6, "id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 298
    invoke-static {p0, v6}, Lcom/android/internal/vibrator/persistence/XmlReader;->readAttributeIntNonNegative(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 299
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    const-string v8, "HapticFeedbackCustomization"

    if-eqz v7, :cond_52

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Multiple customizations found for effect "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 306
    :cond_52
    invoke-static {p0, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported empty customization tag for effect "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    .line 305
    invoke-static {v7, v9, v10}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    .line 309
    invoke-static {p0, v7}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v7

    .line 311
    invoke-virtual {v7, p1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v7

    if-eqz v7, :cond_a2

    .line 313
    invoke-virtual {v7}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v9

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v9, v9, v11

    if-nez v9, :cond_9f

    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 316
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 314
    const-string v0, "Vibration for effect ID %d is repeating, which is not allowed as a haptic feedback: %s"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 319
    :cond_9f
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    :cond_a2
    invoke-static {p0, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    goto/16 :goto_14

    .line 326
    :cond_a7
    invoke-static {p0, v0, v2}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)V

    .line 327
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    return-object v3
.end method

.method public static readCustomizationFile(Landroid/content/res/Resources;)Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 5

    .line 243
    const-string v0, "HapticFeedbackCustomization"

    const v1, 0x10402a7

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_a} :catch_30

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v2

    .line 256
    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_16} :catch_29

    .line 263
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    .line 264
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 265
    invoke-interface {p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 266
    const-string v1, "Successfully opened customization file."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_29
    move-exception p0

    .line 258
    const-string v1, "Specified customization file not found."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :catch_30
    move-exception p0

    .line 246
    const-string v1, "Customization file directory config not found."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static readCustomizationResources(Landroid/content/res/Resources;I)Lcom/android/modules/utils/TypedXmlPullParser;
    .registers 3

    .line 274
    const-string v0, "HapticFeedbackCustomization"

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_6} :catch_10

    .line 279
    const-string p1, "Successfully opened customization resource."

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p0

    return-object p0

    :catch_10
    move-exception p0

    .line 276
    const-string p1, "Haptic customization resource not found."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEffect(II)Landroid/os/VibrationEffect;
    .registers 4

    const/16 v0, 0x62

    if-ne p2, v0, :cond_d

    .line 171
    iget-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForUsageGestureInput:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/VibrationEffect;

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    :goto_e
    if-nez p2, :cond_19

    .line 174
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0

    :cond_19
    return-object p2
.end method

.method public getEffectForInputDevice(II)Landroid/os/VibrationEffect;
    .registers 4

    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_e

    .line 183
    iget-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceRotary:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/VibrationEffect;

    goto :goto_1c

    :cond_e
    and-int/lit16 p2, p2, 0x1002

    if-eqz p2, :cond_1b

    .line 185
    iget-object p2, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizationsForSourceTouchScreen:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/VibrationEffect;

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    if-nez p2, :cond_27

    .line 188
    iget-object p0, p0, Lcom/android/server/vibrator/HapticFeedbackCustomization;->mHapticCustomizations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0

    :cond_27
    return-object p2
.end method
