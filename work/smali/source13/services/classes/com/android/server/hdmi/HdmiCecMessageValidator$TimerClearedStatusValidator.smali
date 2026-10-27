.class Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;
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
    name = "TimerClearedStatusValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6
    .param p1, "params"    # [B

    .line 1002
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 1003
    const/4 v0, 0x4

    return v0

    .line 1005
    :cond_6
    const/4 v0, 0x0

    aget-byte v2, p1, v0

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v2

    if-nez v2, :cond_1a

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-ne v2, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v0

    :cond_1a
    :goto_1a
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
