.class public Lcom/android/server/hdmi/HdmiCecConfig$Value;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# instance fields
.field public final mIntValue:Ljava/lang/Integer;

.field public final mStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/Integer;)V
    .registers 3

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/String;)V
    .registers 3

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getIntValue()Ljava/lang/Integer;
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-object p0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    return-object p0
.end method
