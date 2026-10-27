.class Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;
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
    name = "UserControlPressedValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6
    .param p1, "params"    # [B

    .line 1088
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    .line 1089
    return v1

    .line 1091
    :cond_6
    array-length v0, p1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_b

    .line 1092
    return v3

    .line 1094
    :cond_b
    aget-byte v0, p1, v3

    .line 1095
    .local v0, "uiCommand":I
    sparse-switch v0, :sswitch_data_40

    .line 1107
    return v3

    .line 1099
    :sswitch_11
    array-length v3, p1

    if-lt v3, v1, :cond_1d

    .line 1100
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidChannelIdentifier([BI)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v1

    goto :goto_1e

    .line 1101
    :cond_1d
    nop

    .line 1099
    :goto_1e
    return v1

    .line 1097
    :sswitch_1f
    aget-byte v1, p1, v2

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v1

    return v1

    .line 1105
    :sswitch_2a
    aget-byte v1, p1, v2

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiSoundPresenationControl(I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v1

    return v1

    .line 1103
    :sswitch_35
    aget-byte v1, p1, v2

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiBroadcastType(I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v1

    return v1

    :sswitch_data_40
    .sparse-switch
        0x56 -> :sswitch_35
        0x57 -> :sswitch_2a
        0x60 -> :sswitch_1f
        0x67 -> :sswitch_11
    .end sparse-switch
.end method
