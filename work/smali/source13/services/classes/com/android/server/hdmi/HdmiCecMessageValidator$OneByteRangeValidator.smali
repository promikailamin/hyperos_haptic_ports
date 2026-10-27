.class Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneByteRangeValidator"
.end annotation


# instance fields
.field private final mMaxValue:I

.field private final mMinValue:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMinValue:I

    .line 909
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMaxValue:I

    .line 910
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 5
    .param p1, "params"    # [B

    .line 914
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 915
    const/4 v0, 0x4

    return v0

    .line 917
    :cond_6
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMinValue:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMaxValue:I

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
