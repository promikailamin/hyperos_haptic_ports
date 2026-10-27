.class public Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortAudioDescriptorXmlParser"
.end annotation


# static fields
.field private static final NS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 582
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatNameToNum(Ljava/lang/String;)I
    .registers 19
    .param p0, "codecAttriValue"    # Ljava/lang/String;

    .line 690
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    sparse-switch v1, :sswitch_data_e4

    :cond_23
    goto/16 :goto_ce

    :sswitch_25
    const-string v1, "AUDIO_FORMAT_TRUEHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v5

    goto/16 :goto_cf

    :sswitch_30
    const-string v1, "AUDIO_FORMAT_DD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v15

    goto/16 :goto_cf

    :sswitch_3b
    const-string v1, "AUDIO_FORMAT_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move/from16 v1, v17

    goto/16 :goto_cf

    :sswitch_47
    const-string v1, "AUDIO_FORMAT_LPCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move/from16 v1, v16

    goto/16 :goto_cf

    :sswitch_53
    const-string v1, "AUDIO_FORMAT_MP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v13

    goto/16 :goto_cf

    :sswitch_5e
    const-string v1, "AUDIO_FORMAT_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v2

    goto/16 :goto_cf

    :sswitch_69
    const-string v1, "AUDIO_FORMAT_DTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v10

    goto/16 :goto_cf

    :sswitch_74
    const-string v1, "AUDIO_FORMAT_DST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v4

    goto :goto_cf

    :sswitch_7e
    const-string v1, "AUDIO_FORMAT_DDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v7

    goto :goto_cf

    :sswitch_88
    const-string v1, "AUDIO_FORMAT_AAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v11

    goto :goto_cf

    :sswitch_92
    const-string v1, "AUDIO_FORMAT_ONEBITAUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v8

    goto :goto_cf

    :sswitch_9c
    const-string v1, "AUDIO_FORMAT_MPEG2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v12

    goto :goto_cf

    :sswitch_a6
    const-string v1, "AUDIO_FORMAT_MPEG1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v14

    goto :goto_cf

    :sswitch_b0
    const-string v1, "AUDIO_FORMAT_DTSHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v6

    goto :goto_cf

    :sswitch_ba
    const-string v1, "AUDIO_FORMAT_ATRAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v9

    goto :goto_cf

    :sswitch_c4
    const-string v1, "AUDIO_FORMAT_WMAPRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v3

    goto :goto_cf

    :goto_ce
    const/4 v1, -0x1

    :goto_cf
    packed-switch v1, :pswitch_data_126

    .line 724
    return v17

    .line 722
    :pswitch_d3
    return v2

    .line 720
    :pswitch_d4
    return v3

    .line 718
    :pswitch_d5
    return v4

    .line 716
    :pswitch_d6
    return v5

    .line 714
    :pswitch_d7
    return v6

    .line 712
    :pswitch_d8
    return v7

    .line 710
    :pswitch_d9
    return v8

    .line 708
    :pswitch_da
    return v9

    .line 706
    :pswitch_db
    return v10

    .line 704
    :pswitch_dc
    return v11

    .line 702
    :pswitch_dd
    return v12

    .line 700
    :pswitch_de
    return v13

    .line 698
    :pswitch_df
    return v14

    .line 696
    :pswitch_e0
    return v15

    .line 694
    :pswitch_e1
    return v16

    .line 692
    :pswitch_e2
    return v17

    nop

    :sswitch_data_e4
    .sparse-switch
        -0x7f0fd0ff -> :sswitch_c4
        -0x475c657e -> :sswitch_ba
        -0x47321a60 -> :sswitch_b0
        -0x46b54d13 -> :sswitch_a6
        -0x46b54d12 -> :sswitch_9c
        -0x156509f0 -> :sswitch_92
        -0x10db57fc -> :sswitch_88
        -0x10db4c4f -> :sswitch_7e
        -0x10db4a7a -> :sswitch_74
        -0x10db4a5c -> :sswitch_69
        -0x10db2adb -> :sswitch_5e
        -0x10db292f -> :sswitch_53
        -0xa8a6ed3 -> :sswitch_47
        -0xa898889 -> :sswitch_3b
        0x7b6dc7f -> :sswitch_30
        0x7c210789 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 588
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 589
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readDevices(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static readDeviceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    .registers 12
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v0, "codecSads":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$CodecSad;>;"
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "device"

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5a

    .line 647
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1c

    .line 648
    goto :goto_d

    .line 650
    :cond_1c
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "supportedFormat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 654
    const-string v6, "format"

    invoke-interface {p0, v4, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "codecAttriValue":Ljava/lang/String;
    const-string v7, "descriptor"

    invoke-interface {p0, v4, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "sadAttriValue":Ljava/lang/String;
    if-nez v6, :cond_39

    .line 657
    const/4 v7, 0x0

    goto :goto_3d

    :cond_39
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->formatNameToNum(Ljava/lang/String;)I

    move-result v7

    .line 658
    .local v7, "format":I
    :goto_3d
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readSad(Ljava/lang/String;)[B

    move-result-object v8

    .line 659
    .local v8, "descriptor":[B
    if-eqz v7, :cond_4d

    if-eqz v8, :cond_4d

    .line 660
    new-instance v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    invoke-direct {v9, v7, v8}, Lcom/android/server/hdmi/HdmiUtils$CodecSad;-><init>(I[B)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_4d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 663
    sget-object v9, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    invoke-interface {p0, v3, v9, v5}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v4    # "sadAttriValue":Ljava/lang/String;
    .end local v6    # "codecAttriValue":Ljava/lang/String;
    goto :goto_59

    .line 665
    .end local v7    # "format":I
    .end local v8    # "descriptor":[B
    :cond_56
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Landroid/util/TypedXmlPullParser;)V

    .line 667
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_59
    goto :goto_d

    .line 668
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_61

    .line 669
    return-object v4

    .line 671
    :cond_61
    new-instance v1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    invoke-direct {v1, p1, v0}, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static readDevices(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .registers 6
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;>;"
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "config"

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_40

    .line 616
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1b

    .line 617
    goto :goto_d

    .line 619
    :cond_1b
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "name":Ljava/lang/String;
    const-string v3, "device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 622
    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, "deviceType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 624
    .local v4, "config":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    if-eqz v3, :cond_36

    .line 625
    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readDeviceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    move-result-object v4

    .line 627
    :cond_36
    if-eqz v4, :cond_3b

    .line 628
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v3    # "deviceType":Ljava/lang/String;
    .end local v4    # "config":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    :cond_3b
    goto :goto_3f

    .line 631
    :cond_3c
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Landroid/util/TypedXmlPullParser;)V

    .line 633
    .end local v1    # "name":Ljava/lang/String;
    :goto_3f
    goto :goto_d

    .line 634
    :cond_40
    return-object v0
.end method

.method private static readSad(Ljava/lang/String;)[B
    .registers 5
    .param p0, "sad"    # Ljava/lang/String;

    .line 677
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2d

    .line 680
    :cond_a
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 681
    .local v1, "sadBytes":[B
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2c

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAD byte array length is not 3. Length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-object v0

    .line 685
    :cond_2c
    return-object v1

    .line 678
    .end local v1    # "sadBytes":[B
    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private static skip(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 597
    const/4 v0, 0x1

    .line 598
    .local v0, "depth":I
    :goto_8
    if-eqz v0, :cond_18

    .line 599
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    goto :goto_17

    .line 601
    :pswitch_12
    add-int/lit8 v0, v0, -0x1

    .line 602
    goto :goto_17

    .line 604
    :pswitch_15
    add-int/lit8 v0, v0, 0x1

    .line 605
    :goto_17
    goto :goto_8

    .line 608
    :cond_18
    return-void

    .line 595
    .end local v0    # "depth":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method
