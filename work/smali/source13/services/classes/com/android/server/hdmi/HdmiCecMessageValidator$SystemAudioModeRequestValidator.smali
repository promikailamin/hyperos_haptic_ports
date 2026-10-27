.class Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;
.super Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemAudioModeRequestValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 3
    .param p1, "params"    # [B

    .line 805
    array-length v0, p1

    if-nez v0, :cond_5

    .line 806
    const/4 v0, 0x0

    return v0

    .line 808
    :cond_5
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->isValid([B)I

    move-result v0

    return v0
.end method
