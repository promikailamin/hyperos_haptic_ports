.class Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;
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
    name = "RecordStatusInfoValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 7
    .param p1, "params"    # [B

    .line 841
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 842
    const/4 v0, 0x4

    return v0

    .line 844
    :cond_6
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    const/4 v3, 0x7

    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-byte v2, p1, v0

    const/16 v3, 0x9

    const/16 v4, 0xe

    .line 845
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-byte v2, p1, v0

    const/16 v3, 0x10

    const/16 v4, 0x17

    .line 846
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-byte v2, p1, v0

    const/16 v3, 0x1a

    const/16 v4, 0x1b

    .line 847
    invoke-static {v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_3d

    aget-byte v2, p1, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_3b

    goto :goto_3d

    :cond_3b
    move v1, v0

    goto :goto_3e

    :cond_3d
    :goto_3d
    nop

    .line 844
    :goto_3e
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
