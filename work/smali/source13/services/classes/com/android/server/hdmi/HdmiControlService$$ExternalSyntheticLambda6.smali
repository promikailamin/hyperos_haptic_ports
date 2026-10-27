.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->lambda$updatePowerStatusOnInitializeCecComplete$0$com-android-server-hdmi-HdmiControlService()V

    return-void
.end method
