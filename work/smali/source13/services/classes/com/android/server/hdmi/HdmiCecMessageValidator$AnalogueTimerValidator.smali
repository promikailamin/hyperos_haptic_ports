.class Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;
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
    name = "AnalogueTimerValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6
    .param p1, "params"    # [B

    .line 929
    array-length v0, p1

    const/4 v1, 0x4

    const/16 v2, 0xb

    if-ge v0, v2, :cond_7

    .line 930
    return v1

    .line 932
    :cond_7
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    .line 933
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDayOfMonth(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_66

    aget-byte v2, p1, v3

    .line 934
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMonthOfYear(I)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    .line 935
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidHour(I)Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 936
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v2

    if-eqz v2, :cond_66

    aget-byte v1, p1, v1

    .line 937
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDurationHours(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    .line 938
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    .line 939
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    .line 940
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueBroadcastType(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const/16 v1, 0x8

    .line 942
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    .line 941
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_66

    const/16 v1, 0xa

    aget-byte v1, p1, v1

    .line 943
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidBroadcastSystem(I)Z

    move-result v1

    if-eqz v1, :cond_66

    move v0, v3

    goto :goto_67

    :cond_66
    nop

    .line 932
    :goto_67
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
