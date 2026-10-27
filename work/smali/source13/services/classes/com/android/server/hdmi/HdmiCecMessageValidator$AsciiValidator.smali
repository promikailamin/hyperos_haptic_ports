.class Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;
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
    name = "AsciiValidator"
.end annotation


# instance fields
.field private final mMaxLength:I

.field private final mMinLength:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "length"    # I

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 863
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    .line 864
    return-void
.end method

.method constructor <init>(II)V
    .registers 3
    .param p1, "minLength"    # I
    .param p2, "maxLength"    # I

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 868
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    .line 869
    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4
    .param p1, "params"    # [B

    .line 875
    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    if-ge v0, v1, :cond_7

    .line 876
    const/4 v0, 0x4

    return v0

    .line 878
    :cond_7
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    invoke-static {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAsciiString([BII)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    return v0
.end method
