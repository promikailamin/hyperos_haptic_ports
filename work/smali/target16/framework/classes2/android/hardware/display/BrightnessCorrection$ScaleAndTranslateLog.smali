.class Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"

# interfaces
.implements Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/BrightnessCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleAndTranslateLog"
.end annotation


# static fields
.field private static final blacklist ATTR_SCALE:Ljava/lang/String; = "scale"

.field private static final blacklist ATTR_TRANSLATE:Ljava/lang/String; = "translate"

.field private static final blacklist MAX_SCALE:F = 2.0f

.field private static final blacklist MAX_TRANSLATE:F = 0.7f

.field private static final blacklist MIN_SCALE:F = 0.5f

.field private static final blacklist MIN_TRANSLATE:F = -0.6f


# instance fields
.field private final blacklist mScale:F

.field private final blacklist mTranslate:F


# direct methods
.method constructor blacklist <init>(FF)V
    .registers 5

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    .line 219
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iput p1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    .line 220
    const p1, -0x40e66666    # -0.6f

    const v0, 0x3f333333    # 0.7f

    invoke-static {p2, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iput p1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    .line 221
    return-void

    .line 217
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scale and translate must be numbers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 276
    const-string v0, "scale"

    invoke-static {p0, v0}, Landroid/hardware/display/BrightnessCorrection;->-$$Nest$smloadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v0

    .line 277
    const-string v1, "translate"

    invoke-static {p0, v1}, Landroid/hardware/display/BrightnessCorrection;->-$$Nest$smloadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result p0

    .line 278
    invoke-static {v0, p0}, Landroid/hardware/display/BrightnessCorrection;->createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p0

    return-object p0
.end method

.method static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/BrightnessCorrection;
    .registers 2

    .line 269
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 270
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    .line 271
    invoke-static {v0, p0}, Landroid/hardware/display/BrightnessCorrection;->createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist apply(F)F
    .registers 3

    .line 225
    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-static {p1}, Landroid/util/MathUtils;->log(F)F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    add-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 235
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 236
    return v0

    .line 238
    :cond_4
    instance-of v1, p1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 239
    return v2

    .line 241
    :cond_a
    check-cast p1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    .line 242
    iget v1, p1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    iget v3, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1d

    iget p1, p1, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 247
    nop

    .line 248
    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 249
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    const-string v1, "scale-and-translate-log"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const-string v2, "scale"

    iget v3, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    const-string v2, "translate"

    iget v3, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleAndTranslateLog("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 257
    iget v0, p0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->mTranslate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 258
    return-void
.end method
