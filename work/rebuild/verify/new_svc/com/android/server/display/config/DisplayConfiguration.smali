.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field public ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field public ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

.field public ambientLightHorizonLong:Ljava/math/BigInteger;

.field public ambientLightHorizonShort:Ljava/math/BigInteger;

.field public autoBrightness:Lcom/android/server/display/config/AutoBrightness;

.field public defaultDozeBrightness:Ljava/math/BigDecimal;

.field public densityMapping:Lcom/android/server/display/config/DensityMapping;

.field public displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

.field public displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

.field public dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

.field public evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

.field public hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

.field public highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field public idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

.field public lightSensor:Lcom/android/server/display/config/SensorDetails;

.field public luxThrottling:Lcom/android/server/display/config/LuxThrottling;

.field public name:Ljava/lang/String;

.field public powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

.field public proxSensor:Ljava/util/List;

.field public quirks:Lcom/android/server/display/config/DisplayQuirks;

.field public refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

.field public screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

.field public screenBrightnessDefault:Ljava/math/BigDecimal;

.field public screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field public screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

.field public screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

.field public screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

.field public screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

.field public screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

.field public screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

.field public supportsVrr:Ljava/lang/Boolean;

.field public tempSensor:Lcom/android/server/display/config/SensorDetails;

.field public thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

.field public usiVersion:Lcom/android/server/display/config/UsiVersion;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 5

    .line 641
    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    .line 643
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 645
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_332

    if-eq v1, v3, :cond_332

    .line 647
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 648
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 649
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 650
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 652
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 653
    :cond_2f
    const-string v2, "densityMapping"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 654
    invoke-static {p0}, Lcom/android/server/display/config/DensityMapping;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DensityMapping;

    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V

    goto :goto_8

    .line 656
    :cond_3f
    const-string/jumbo v2, "screenBrightnessMap"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 657
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    goto :goto_8

    .line 659
    :cond_50
    const-string/jumbo v2, "screenBrightnessDefault"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 660
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 661
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    goto :goto_8

    .line 663
    :cond_66
    const-string/jumbo v2, "thermalThrottling"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 664
    invoke-static {p0}, Lcom/android/server/display/config/ThermalThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V

    goto :goto_8

    .line 666
    :cond_77
    const-string/jumbo v2, "powerThrottlingConfig"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 667
    invoke-static {p0}, Lcom/android/server/display/config/PowerThrottlingConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/PowerThrottlingConfig;

    move-result-object v1

    .line 668
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setPowerThrottlingConfig(Lcom/android/server/display/config/PowerThrottlingConfig;)V

    goto :goto_8

    .line 669
    :cond_88
    const-string/jumbo v2, "luxThrottling"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 670
    invoke-static {p0}, Lcom/android/server/display/config/LuxThrottling;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/LuxThrottling;

    move-result-object v1

    .line 671
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setLuxThrottling(Lcom/android/server/display/config/LuxThrottling;)V

    goto/16 :goto_8

    .line 672
    :cond_9a
    const-string v2, "highBrightnessMode"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 673
    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v1

    .line 674
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    goto/16 :goto_8

    .line 675
    :cond_ab
    const-string v2, "hdrBrightnessConfig"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 676
    invoke-static {p0}, Lcom/android/server/display/config/HdrBrightnessConfig;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HdrBrightnessConfig;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setHdrBrightnessConfig(Lcom/android/server/display/config/HdrBrightnessConfig;)V

    goto/16 :goto_8

    .line 678
    :cond_bc
    const-string/jumbo v2, "quirks"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 679
    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v1

    .line 680
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    goto/16 :goto_8

    .line 681
    :cond_ce
    const-string v2, "autoBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 682
    invoke-static {p0}, Lcom/android/server/display/config/AutoBrightness;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/AutoBrightness;

    move-result-object v1

    .line 683
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    goto/16 :goto_8

    .line 684
    :cond_df
    const-string/jumbo v2, "refreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 685
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object v1

    .line 686
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V

    goto/16 :goto_8

    .line 687
    :cond_f1
    const-string/jumbo v2, "screenBrightnessRampFastDecrease"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 688
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 689
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 691
    :cond_108
    const-string/jumbo v2, "screenBrightnessRampFastIncrease"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 692
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 693
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 695
    :cond_11f
    const-string/jumbo v2, "screenBrightnessRampSlowDecrease"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 696
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 697
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 699
    :cond_136
    const-string/jumbo v2, "screenBrightnessRampSlowIncrease"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 700
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 701
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 703
    :cond_14d
    const-string/jumbo v2, "screenBrightnessRampSlowDecreaseIdle"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    .line 704
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 705
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecreaseIdle(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 707
    :cond_164
    const-string/jumbo v2, "screenBrightnessRampSlowIncreaseIdle"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17b

    .line 708
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 709
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncreaseIdle(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 711
    :cond_17b
    const-string/jumbo v2, "screenBrightnessRampIncreaseMaxMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 712
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 713
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    .line 715
    :cond_192
    const-string/jumbo v2, "screenBrightnessRampDecreaseMaxMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 716
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 717
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    .line 719
    :cond_1a9
    const-string/jumbo v2, "screenBrightnessRampIncreaseMaxIdleMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 720
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 721
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampIncreaseMaxIdleMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    .line 723
    :cond_1c0
    const-string/jumbo v2, "screenBrightnessRampDecreaseMaxIdleMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d7

    .line 724
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 725
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampDecreaseMaxIdleMillis(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    .line 727
    :cond_1d7
    const-string/jumbo v2, "lightSensor"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 728
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_8

    .line 730
    :cond_1e9
    const-string/jumbo v2, "screenOffBrightnessSensor"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fb

    .line 731
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenOffBrightnessSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_8

    .line 733
    :cond_1fb
    const-string/jumbo v2, "proxSensor"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    .line 734
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 735
    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 736
    :cond_211
    const-string/jumbo v2, "tempSensor"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_223

    .line 737
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v1

    .line 738
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setTempSensor(Lcom/android/server/display/config/SensorDetails;)V

    goto/16 :goto_8

    .line 739
    :cond_223
    const-string v2, "ambientLightHorizonLong"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 740
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 741
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonLong(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    .line 743
    :cond_239
    const-string v2, "ambientLightHorizonShort"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24f

    .line 744
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientLightHorizonShort(Ljava/math/BigInteger;)V

    goto/16 :goto_8

    .line 747
    :cond_24f
    const-string v2, "displayBrightnessChangeThresholds"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_260

    .line 748
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 749
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_8

    .line 750
    :cond_260
    const-string v2, "ambientBrightnessChangeThresholds"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 751
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 752
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_8

    .line 753
    :cond_271
    const-string v2, "displayBrightnessChangeThresholdsIdle"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_282

    .line 754
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 755
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDisplayBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_8

    .line 756
    :cond_282
    const-string v2, "ambientBrightnessChangeThresholdsIdle"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_293

    .line 757
    invoke-static {p0}, Lcom/android/server/display/config/Thresholds;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 758
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setAmbientBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V

    goto/16 :goto_8

    .line 759
    :cond_293
    const-string/jumbo v2, "screenOffBrightnessSensorValueToLux"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a5

    .line 760
    invoke-static {p0}, Lcom/android/server/display/config/IntegerArray;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IntegerArray;

    move-result-object v1

    .line 761
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenOffBrightnessSensorValueToLux(Lcom/android/server/display/config/IntegerArray;)V

    goto/16 :goto_8

    .line 762
    :cond_2a5
    const-string/jumbo v2, "usiVersion"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 763
    invoke-static {p0}, Lcom/android/server/display/config/UsiVersion;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/UsiVersion;

    move-result-object v1

    .line 764
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setUsiVersion(Lcom/android/server/display/config/UsiVersion;)V

    goto/16 :goto_8

    .line 765
    :cond_2b7
    const-string v2, "evenDimmer"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c8

    .line 766
    invoke-static {p0}, Lcom/android/server/display/config/EvenDimmerMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/EvenDimmerMode;

    move-result-object v1

    .line 767
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setEvenDimmer(Lcom/android/server/display/config/EvenDimmerMode;)V

    goto/16 :goto_8

    .line 768
    :cond_2c8
    const-string/jumbo v2, "screenBrightnessCapForWearBedtimeMode"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2df

    .line 769
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 770
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessCapForWearBedtimeMode(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 772
    :cond_2df
    const-string v2, "idleScreenRefreshRateTimeout"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f0

    .line 773
    invoke-static {p0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v1

    .line 774
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setIdleScreenRefreshRateTimeout(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V

    goto/16 :goto_8

    .line 775
    :cond_2f0
    const-string/jumbo v2, "supportsVrr"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_306

    .line 776
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 778
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setSupportsVrr(Z)V

    goto/16 :goto_8

    .line 779
    :cond_306
    const-string v2, "dozeBrightnessSensorValueToBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_317

    .line 780
    invoke-static {p0}, Lcom/android/server/display/config/FloatArray;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/FloatArray;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/DisplayConfiguration;->setDozeBrightnessSensorValueToBrightness(Lcom/android/server/display/config/FloatArray;)V

    goto/16 :goto_8

    .line 782
    :cond_317
    const-string v2, "defaultDozeBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32d

    .line 783
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 784
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/DisplayConfiguration;->setDefaultDozeBrightness(Ljava/math/BigDecimal;)V

    goto/16 :goto_8

    .line 787
    :cond_32d
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_332
    if-ne v1, v3, :cond_335

    return-object v0

    .line 791
    :cond_335
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DisplayConfiguration is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getAmbientBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;
    .registers 1

    .line 503
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getAmbientLightHorizonLong()Ljava/math/BigInteger;
    .registers 1

    .line 428
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getAmbientLightHorizonShort()Ljava/math/BigInteger;
    .registers 1

    .line 443
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    return-object p0
.end method

.method public final getDefaultDozeBrightness()Ljava/math/BigDecimal;
    .registers 1

    .line 626
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->defaultDozeBrightness:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getDensityMapping()Lcom/android/server/display/config/DensityMapping;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-object p0
.end method

.method public final getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getDisplayBrightnessChangeThresholdsIdle()Lcom/android/server/display/config/Thresholds;
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-object p0
.end method

.method public final getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;
    .registers 1

    .line 611
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

    return-object p0
.end method

.method public final getEvenDimmer()Lcom/android/server/display/config/EvenDimmerMode;
    .registers 1

    .line 548
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    return-object p0
.end method

.method public final getHdrBrightnessConfig()Lcom/android/server/display/config/HdrBrightnessConfig;
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    return-object p0
.end method

.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object p0
.end method

.method public final getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;
    .registers 1

    .line 578
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    return-object p0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public getLuxThrottling()Lcom/android/server/display/config/LuxThrottling;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPowerThrottlingConfig()Lcom/android/server/display/config/PowerThrottlingConfig;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    return-object p0
.end method

.method public final getProxSensor()Ljava/util/List;
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    if-nez v0, :cond_b

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 409
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    return-object p0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object p0
.end method

.method public getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    return-object p0
.end method

.method public final getScreenBrightnessCapForWearBedtimeMode()Ljava/math/BigDecimal;
    .registers 1

    .line 563
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object p0
.end method

.method public final getScreenBrightnessRampDecreaseMaxIdleMillis()Ljava/math/BigInteger;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampIncreaseMaxIdleMillis()Ljava/math/BigInteger;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowDecreaseIdle()Ljava/math/BigDecimal;
    .registers 1

    .line 286
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenBrightnessRampSlowIncreaseIdle()Ljava/math/BigDecimal;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 1

    .line 391
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public final getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;
    .registers 1

    .line 518
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    return-object p0
.end method

.method public final getSupportsVrr()Z
    .registers 1

    .line 593
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 596
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getTempSensor()Lcom/android/server/display/config/SensorDetails;
    .registers 1

    .line 413
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    return-object p0
.end method

.method public final getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-object p0
.end method

.method public final getUsiVersion()Lcom/android/server/display/config/UsiVersion;
    .registers 1

    .line 533
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    return-object p0
.end method

.method public final setAmbientBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .registers 2

    .line 484
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setAmbientBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V
    .registers 2

    .line 514
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setAmbientLightHorizonLong(Ljava/math/BigInteger;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonLong:Ljava/math/BigInteger;

    return-void
.end method

.method public final setAmbientLightHorizonShort(Ljava/math/BigInteger;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->ambientLightHorizonShort:Ljava/math/BigInteger;

    return-void
.end method

.method public setAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->autoBrightness:Lcom/android/server/display/config/AutoBrightness;

    return-void
.end method

.method public final setDefaultDozeBrightness(Ljava/math/BigDecimal;)V
    .registers 2

    .line 637
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->defaultDozeBrightness:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setDensityMapping(Lcom/android/server/display/config/DensityMapping;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->densityMapping:Lcom/android/server/display/config/DensityMapping;

    return-void
.end method

.method public final setDisplayBrightnessChangeThresholds(Lcom/android/server/display/config/Thresholds;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholds:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setDisplayBrightnessChangeThresholdsIdle(Lcom/android/server/display/config/Thresholds;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->displayBrightnessChangeThresholdsIdle:Lcom/android/server/display/config/Thresholds;

    return-void
.end method

.method public final setDozeBrightnessSensorValueToBrightness(Lcom/android/server/display/config/FloatArray;)V
    .registers 2

    .line 622
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->dozeBrightnessSensorValueToBrightness:Lcom/android/server/display/config/FloatArray;

    return-void
.end method

.method public final setEvenDimmer(Lcom/android/server/display/config/EvenDimmerMode;)V
    .registers 2

    .line 559
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->evenDimmer:Lcom/android/server/display/config/EvenDimmerMode;

    return-void
.end method

.method public final setHdrBrightnessConfig(Lcom/android/server/display/config/HdrBrightnessConfig;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    return-void
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-void
.end method

.method public final setIdleScreenRefreshRateTimeout(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->idleScreenRefreshRateTimeout:Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public setLuxThrottling(Lcom/android/server/display/config/LuxThrottling;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->luxThrottling:Lcom/android/server/display/config/LuxThrottling;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->name:Ljava/lang/String;

    return-void
.end method

.method public setPowerThrottlingConfig(Lcom/android/server/display/config/PowerThrottlingConfig;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->powerThrottlingConfig:Lcom/android/server/display/config/PowerThrottlingConfig;

    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-void
.end method

.method public setRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->refreshRate:Lcom/android/server/display/config/RefreshRateConfigs;

    return-void
.end method

.method public final setScreenBrightnessCapForWearBedtimeMode(Ljava/math/BigDecimal;)V
    .registers 2

    .line 574
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessCapForWearBedtimeMode:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxIdleMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxIdleMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampDecreaseMaxMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampDecreaseMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxIdleMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 357
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxIdleMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampIncreaseMaxMillis(Ljava/math/BigInteger;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampIncreaseMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowDecreaseIdle(Ljava/math/BigDecimal;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecreaseIdle:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenBrightnessRampSlowIncreaseIdle(Ljava/math/BigDecimal;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncreaseIdle:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setScreenOffBrightnessSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public final setScreenOffBrightnessSensorValueToLux(Lcom/android/server/display/config/IntegerArray;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenOffBrightnessSensorValueToLux:Lcom/android/server/display/config/IntegerArray;

    return-void
.end method

.method public final setSupportsVrr(Z)V
    .registers 2

    .line 607
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->supportsVrr:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTempSensor(Lcom/android/server/display/config/SensorDetails;)V
    .registers 2

    .line 424
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->tempSensor:Lcom/android/server/display/config/SensorDetails;

    return-void
.end method

.method public final setThermalThrottling(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->thermalThrottling:Lcom/android/server/display/config/ThermalThrottling;

    return-void
.end method

.method public final setUsiVersion(Lcom/android/server/display/config/UsiVersion;)V
    .registers 2

    .line 544
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->usiVersion:Lcom/android/server/display/config/UsiVersion;

    return-void
.end method
