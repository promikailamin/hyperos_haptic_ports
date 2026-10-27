.class Lcom/android/server/hdmi/HdmiCecConfig$Value;
.super Ljava/lang/Object;
.source "HdmiCecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Value"
.end annotation


# instance fields
.field private final mIntValue:Ljava/lang/Integer;

.field private final mStringValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecConfig;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/Integer;)V
    .registers 3
    .param p2, "value"    # Ljava/lang/Integer;

    .line 191
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 194
    return-void
.end method

.method constructor <init>(Lcom/android/server/hdmi/HdmiCecConfig;Ljava/lang/String;)V
    .registers 3
    .param p2, "value"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->this$0:Lcom/android/server/hdmi/HdmiCecConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    .line 188
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    .line 189
    return-void
.end method


# virtual methods
.method getIntValue()Ljava/lang/Integer;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mIntValue:Ljava/lang/Integer;

    return-object v0
.end method

.method getStringValue()Ljava/lang/String;
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecConfig$Value;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
