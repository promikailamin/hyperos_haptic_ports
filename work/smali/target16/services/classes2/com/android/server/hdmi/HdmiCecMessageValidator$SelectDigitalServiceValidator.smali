.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 3

    .line 1148
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    .line 1151
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDigitalServiceIdentification([BI)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
