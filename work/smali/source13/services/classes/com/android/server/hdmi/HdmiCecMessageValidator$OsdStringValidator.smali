.class Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;
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
    name = "OsdStringValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 5
    .param p1, "params"    # [B

    .line 892
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 893
    const/4 v0, 0x4

    return v0

    .line 895
    :cond_6
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    .line 897
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDisplayControl(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1a

    const/16 v1, 0xe

    .line 899
    invoke-static {p1, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAsciiString([BII)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    nop

    .line 895
    :goto_1b
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
