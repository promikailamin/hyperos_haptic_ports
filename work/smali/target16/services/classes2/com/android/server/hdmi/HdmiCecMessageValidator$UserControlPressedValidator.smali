.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6

    .line 1174
    array-length p0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ge p0, v1, :cond_6

    return v0

    .line 1177
    :cond_6
    array-length p0, p1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_b

    return v2

    .line 1180
    :cond_b
    aget-byte p0, p1, v2

    const/16 v3, 0x56

    if-eq p0, v3, :cond_41

    const/16 v3, 0x57

    if-eq p0, v3, :cond_36

    const/16 v3, 0x60

    if-eq p0, v3, :cond_2b

    const/16 v3, 0x67

    if-eq p0, v3, :cond_1e

    return v2

    .line 1185
    :cond_1e
    array-length p0, p1

    if-lt p0, v0, :cond_2a

    .line 1186
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidChannelIdentifier([BI)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    :cond_2a
    return v0

    .line 1183
    :cond_2b
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    .line 1191
    :cond_36
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiSoundPresenationControl(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    .line 1189
    :cond_41
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiBroadcastType(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
