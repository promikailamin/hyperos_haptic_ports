.class Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;
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
    name = "ExternalTimerValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6
    .param p1, "params"    # [B

    .line 979
    array-length v0, p1

    const/4 v1, 0x4

    const/16 v2, 0x9

    if-ge v0, v2, :cond_7

    .line 980
    return v1

    .line 982
    :cond_7
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    .line 983
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDayOfMonth(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4e

    aget-byte v2, p1, v3

    .line 984
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMonthOfYear(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    .line 985
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidHour(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 986
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    aget-byte v1, p1, v1

    .line 987
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDurationHours(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    .line 988
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    .line 989
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x7

    .line 990
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidExternalSource([BI)Z

    move-result v1

    if-eqz v1, :cond_4e

    move v0, v3

    goto :goto_4f

    :cond_4e
    nop

    .line 982
    :goto_4f
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
