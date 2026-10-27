.class Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;
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
    name = "SelectAnalogueServiceValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 5
    .param p1, "params"    # [B

    .line 1045
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 1046
    return v1

    .line 1048
    :cond_5
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueBroadcastType(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    .line 1049
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    .line 1050
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidBroadcastSystem(I)Z

    move-result v1

    if-eqz v1, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    nop

    .line 1048
    :goto_25
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
