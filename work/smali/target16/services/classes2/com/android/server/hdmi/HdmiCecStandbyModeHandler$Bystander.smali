.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    .line 0
    const/4 p0, 0x1

    return p0
.end method
