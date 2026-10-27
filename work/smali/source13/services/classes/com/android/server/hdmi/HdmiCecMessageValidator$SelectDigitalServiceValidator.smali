.class Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;
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
    name = "SelectDigitalServiceValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4
    .param p1, "params"    # [B

    .line 1062
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 1063
    return v1

    .line 1065
    :cond_5
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDigitalServiceIdentification([BI)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
