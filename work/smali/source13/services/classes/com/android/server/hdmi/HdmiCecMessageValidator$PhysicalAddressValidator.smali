.class Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
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
    name = "PhysicalAddressValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4
    .param p1, "params"    # [B

    .line 794
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 795
    const/4 v0, 0x4

    return v0

    .line 797
    :cond_6
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPhysicalAddress([BI)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
