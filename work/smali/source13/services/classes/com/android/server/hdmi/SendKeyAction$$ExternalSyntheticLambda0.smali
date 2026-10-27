.class public final synthetic Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SendKeyAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SendKeyAction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SendKeyAction;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SendKeyAction;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/SendKeyAction;->lambda$sendKeyUp$0$com-android-server-hdmi-SendKeyAction(I)V

    return-void
.end method
