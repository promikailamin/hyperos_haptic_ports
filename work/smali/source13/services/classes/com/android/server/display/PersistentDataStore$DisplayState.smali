.class final Lcom/android/server/display/PersistentDataStore$DisplayState;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayState"
.end annotation


# instance fields
.field private mBrightness:F

.field private mColorMode:I

.field private mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field private mHeight:I

.field private mRefreshRate:F

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore$DisplayState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BrightnessValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DisplayBrightnessConfigurations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public getBrightness()F
    .registers 2

    .line 648
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    return v0
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userSerial"    # I

    .line 659
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$fgetmConfigurations(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method public getColorMode()I
    .registers 2

    .line 636
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    return v0
.end method

.method public getRefreshRate()F
    .registers 2

    .line 684
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    return v0
.end method

.method public getResolution()Landroid/graphics/Point;
    .registers 4

    .line 672
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    iget v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 689
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 691
    .local v0, "outerDepth":I
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 692
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_56

    :cond_16
    goto :goto_34

    :sswitch_17
    const-string v3, "color-mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    goto :goto_34

    :sswitch_21
    const-string v3, "brightness-value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x1

    goto :goto_34

    :sswitch_2b
    const-string v3, "brightness-configurations"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v2, 0x2

    :goto_34
    packed-switch v2, :pswitch_data_64

    goto :goto_54

    .line 702
    :pswitch_38
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Landroid/util/TypedXmlPullParser;)V

    goto :goto_54

    .line 698
    :pswitch_3e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "brightness":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    .line 700
    goto :goto_54

    .line 694
    .end local v1    # "brightness":Ljava/lang/String;
    :pswitch_49
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 696
    nop

    .line 703
    .end local v1    # "value":Ljava/lang/String;
    :goto_54
    goto :goto_4

    .line 706
    :cond_55
    return-void

    :sswitch_data_56
    .sparse-switch
        -0x4ecba0c7 -> :sswitch_2b
        -0x385f6f0b -> :sswitch_21
        0x4a1b51cd -> :sswitch_17
    .end sparse-switch

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3e
        :pswitch_38
    .end packed-switch
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    const/4 v0, 0x0

    const-string v1, "color-mode"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    const-string v1, "brightness-value"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    iget v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 717
    const-string v1, "brightness-configurations"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 719
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    return-void
.end method

.method public setBrightness(F)Z
    .registers 3
    .param p1, "brightness"    # F

    .line 640
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 641
    const/4 v0, 0x0

    return v0

    .line 643
    :cond_8
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mBrightness:F

    .line 644
    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 5
    .param p1, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userSerial"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method public setColorMode(I)Z
    .registers 3
    .param p1, "colorMode"    # I

    .line 628
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    if-ne p1, v0, :cond_6

    .line 629
    const/4 v0, 0x0

    return v0

    .line 631
    :cond_6
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method public setRefreshRate(F)Z
    .registers 3
    .param p1, "refreshRate"    # F

    .line 676
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_8

    .line 677
    const/4 v0, 0x0

    return v0

    .line 679
    :cond_8
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    .line 680
    const/4 v0, 0x1

    return v0
.end method

.method public setResolution(II)Z
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 663
    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    if-ne p2, v0, :cond_a

    .line 664
    const/4 v0, 0x0

    return v0

    .line 666
    :cond_a
    iput p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    .line 667
    iput p2, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    .line 668
    const/4 v0, 0x1

    return v0
.end method
