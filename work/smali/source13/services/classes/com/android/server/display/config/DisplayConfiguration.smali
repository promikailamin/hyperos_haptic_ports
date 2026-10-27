.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field private ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field private ambientLightHorizonLong:Ljava/math/BigInteger;

.field private ambientLightHorizonShort:Ljava/math/BigInteger;

.field private densityMapping:Lcom/android/server/display/config/DensityMapping;

.field private displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field private highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field private lightSensor:Lcom/android/server/display/config/SensorDetails;

.field private proxSensor:Lcom/android/server/display/config/SensorDetails;

.field private quirks:Lcom/android/server/display/config/DisplayQuirks;

.field private screenBrightnessDefault:Ljava/math/BigDecimal;

.field private screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field private screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

.field private screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

.field private screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

.field private thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    .line 295
    .local v0, "instance":Lcom/android/server/display/config/DisplayConfiguration;
    const/4 v1, 0x0

    .line 296
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 298
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_18c

    if-eq v4, v6, :cond_18c

    .line 300
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 301
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "densityMapping"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 303
    invoke-static {p0}, Lcom/android/server/display/config/DensityMapping;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DensityMapping;

    move-result-object v5

    .line 304
    .local v5, "value":Lcom/android/server/display/config/DensityMapping;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V

    .line 305
    .end local v5    # "value":Lcom/android/server/display/config/DensityMapping;
    goto/16 :goto_18a

    :cond_32
    const-string/jumbo v5, "screenBrightnessMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 306
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v5

    .line 307
    .local v5, "value":Lcom/android/server/display/config/NitsMap;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    .line 308
    .end local v5    # "value":Lcom/android/server/display/config/NitsMap;
    goto/16 :goto_18a

    :cond_44
    const-string/jumbo v5, "screenBrightnessDefault"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 309
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 310
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 311
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    .line 312
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_18a

    :cond_5b
    const-string/jumbo v5, "thermalThrottling"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 313
    invoke-static {p0}, Lcom/android/server/display/config/ThermalThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v5

    .line 314
    .local v5, "value":Lcom/android/server/display/config/ThermalThrottling;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 315
    .end local v5    # "value":Lcom/android/server/display/config/ThermalThrottling;
    goto/16 :goto_18a

    :cond_6d
    const-string/jumbo v5, "highBrightnessMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 316
    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v5

    .line 317
    .local v5, "value":Lcom/android/server/display/config/HighBrightnessMode;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    .line 318
    .end local v5    # "value":Lcom/android/server/display/config/HighBrightnessMode;
    goto/16 :goto_18a

    :cond_7f
    const-string/jumbo v5, "quirks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 319
    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v5

    .line 320
    .local v5, "value":Lcom/android/server/display/config/DisplayQuirks;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    .line 321
    .end local v5    # "value":Lcom/android/server/display/config/DisplayQuirks;
    goto/16 :goto_18a

    :cond_91
    const-string/jumbo v5, "screenBrightnessRampFastDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 322
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 324
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    .line 325
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_18a

    :cond_a8
    const-string/jumbo v5, "screenBrightnessRampFastIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 326
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    .line 329
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_18a

    :cond_bf
    const-string/jumbo v5, "screenBrightnessRampSlowDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 330
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    .line 333
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_18a

    :cond_d6
    const-string/jumbo v5, "screenBrightnessRampSlowIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 334
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    .line 337
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_18a

    :cond_ed
    const-string/jumbo v5, "screenBrightnessRampIncreaseMaxMillis"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_104

    .line 338
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 339
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 340
    .local v5, "value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V

    .line 341
    .end local v5    # "value":Ljava/math/BigInteger;
    goto/16 :goto_18a

    :cond_104
    const-string/jumbo v5, "screenBrightnessRampDecreaseMaxMillis"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 342
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v5    # "value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V

    .line 345
    .end local v5    # "value":Ljava/math/BigInteger;
    goto/16 :goto_18a

    :cond_11b
    const-string/jumbo v5, "lightSensor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 346
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 347
    .local v5, "value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 348
    .end local v5    # "value":Lcom/android/server/display/config/SensorDetails;
    goto :goto_18a

    :cond_12c
    const-string/jumbo v5, "proxSensor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13d

    .line 349
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 350
    .restart local v5    # "value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setProxSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 351
    .end local v5    # "value":Lcom/android/server/display/config/SensorDetails;
    goto :goto_18a

    :cond_13d
    const-string v5, "ambientLightHorizonLong"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_152

    .line 352
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 353
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 354
    .local v5, "value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonLong(Ljava/math/BigInteger;)V

    .line 355
    .end local v5    # "value":Ljava/math/BigInteger;
    goto :goto_18a

    :cond_152
    const-string v5, "ambientLightHorizonShort"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_167

    .line 356
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 358
    .restart local v5    # "value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonShort(Ljava/math/BigInteger;)V

    .line 359
    .end local v5    # "value":Ljava/math/BigInteger;
    goto :goto_18a

    :cond_167
    const-string v5, "displayBrightnessChangeThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_177

    .line 360
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    .line 361
    .local v5, "value":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    .line 362
    .end local v5    # "value":Lcom/android/server/display/config/Thresholds;
    goto :goto_18a

    :cond_177
    const-string v5, "ambientBrightnessChangeThresholds"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_187

    .line 363
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v5

    .line 364
    .restart local v5    # "value":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    .line 365
    .end local v5    # "value":Lcom/android/server/display/config/Thresholds;
    goto :goto_18a

    .line 366
    :cond_187
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 368
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_18a
    goto/16 :goto_a

    .line 369
    :cond_18c
    if-ne v4, v6, :cond_18f

    .line 372
    return-object v0

    .line 370
    :cond_18f
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DisplayConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public final getAmbientLightHorizonLong()Ljava/math/BigInteger;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getAmbientLightHorizonShort()Ljava/math/BigInteger;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getDensityMapping()Lcom/android/server/display/config/DensityMapping;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-object v0
.end method

.method public final getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object v0
.end method

.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object v0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public final getProxSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object v0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object v0
.end method

.method public final getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-object v0
.end method

.method hasAmbientBrightnessChangeThresholds()Z
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_6

    .line 284
    const/4 v0, 0x0

    return v0

    .line 286
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasAmbientLightHorizonLong()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    .line 239
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasAmbientLightHorizonShort()Z
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    .line 254
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasDensityMapping()Z
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    if-nez v0, :cond_6

    .line 29
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasDisplayBrightnessChangeThresholds()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    if-nez v0, :cond_6

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasHighBrightnessMode()Z
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    if-nez v0, :cond_6

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasLightSensor()Z
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_6

    .line 209
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasProxSensor()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_6

    .line 224
    const/4 v0, 0x0

    return v0

    .line 226
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasQuirks()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    if-nez v0, :cond_6

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessDefault()Z
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessMap()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    if-nez v0, :cond_6

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampDecreaseMaxMillis()Z
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    .line 194
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastDecrease()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastIncrease()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampIncreaseMaxMillis()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    if-nez v0, :cond_6

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowDecrease()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowIncrease()Z
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_6

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasThermalThrottling()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    if-nez v0, :cond_6

    .line 74
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public final setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .registers 2
    .param p1, "ambientBrightnessChangeThresholds"    # Lcom/android/server/display/config/Thresholds;

    .line 290
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    .line 291
    return-void
.end method

.method public final setAmbientLightHorizonLong(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "ambientLightHorizonLong"    # Ljava/math/BigInteger;

    .line 245
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    .line 246
    return-void
.end method

.method public final setAmbientLightHorizonShort(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "ambientLightHorizonShort"    # Ljava/math/BigInteger;

    .line 260
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    .line 261
    return-void
.end method

.method public final setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V
    .registers 2
    .param p1, "densityMapping"    # Lcom/android/server/display/config/DensityMapping;

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    .line 36
    return-void
.end method

.method public final setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .registers 2
    .param p1, "displayBrightnessChangeThresholds"    # Lcom/android/server/display/config/Thresholds;

    .line 275
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    .line 276
    return-void
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .registers 2
    .param p1, "highBrightnessMode"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 95
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 96
    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2
    .param p1, "lightSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 215
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    .line 216
    return-void
.end method

.method public final setProxSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2
    .param p1, "proxSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 230
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    .line 231
    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .registers 2
    .param p1, "quirks"    # Lcom/android/server/display/config/DisplayQuirks;

    .line 110
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    .line 111
    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "screenBrightnessDefault"    # Ljava/math/BigDecimal;

    .line 65
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    .line 66
    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .registers 2
    .param p1, "screenBrightnessMap"    # Lcom/android/server/display/config/NitsMap;

    .line 50
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    .line 51
    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "screenBrightnessRampDecreaseMaxMillis"    # Ljava/math/BigInteger;

    .line 200
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    .line 201
    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "screenBrightnessRampFastDecrease"    # Ljava/math/BigDecimal;

    .line 125
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    .line 126
    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "screenBrightnessRampFastIncrease"    # Ljava/math/BigDecimal;

    .line 140
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    .line 141
    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "screenBrightnessRampIncreaseMaxMillis"    # Ljava/math/BigInteger;

    .line 185
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    .line 186
    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "screenBrightnessRampSlowDecrease"    # Ljava/math/BigDecimal;

    .line 155
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    .line 156
    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .registers 2
    .param p1, "screenBrightnessRampSlowIncrease"    # Ljava/math/BigDecimal;

    .line 170
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    .line 171
    return-void
.end method

.method public final setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 2
    .param p1, "thermalThrottling"    # Lcom/android/server/display/config/ThermalThrottling;

    .line 80
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    .line 81
    return-void
.end method
