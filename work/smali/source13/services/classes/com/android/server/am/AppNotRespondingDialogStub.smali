.class public Lcom/android/server/am/AppNotRespondingDialogStub;
.super Ljava/lang/Object;
.source "AppNotRespondingDialogStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/server/am/AppNotRespondingDialogStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/am/AppNotRespondingDialogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialogStub;

    return-object v0
.end method


# virtual methods
.method onCreate(Lcom/android/server/am/AppNotRespondingDialog;)Z
    .registers 3
    .param p1, "dialog"    # Lcom/android/server/am/AppNotRespondingDialog;

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method onInit(Lcom/android/server/am/AppNotRespondingDialog;ZLandroid/os/Message;Landroid/os/Message;Landroid/os/Message;)V
    .registers 6
    .param p1, "dialog"    # Lcom/android/server/am/AppNotRespondingDialog;
    .param p2, "hasErrorReceiver"    # Z
    .param p3, "forceCloseMsg"    # Landroid/os/Message;
    .param p4, "waitMsg"    # Landroid/os/Message;
    .param p5, "waitAndReportMsg"    # Landroid/os/Message;

    .line 13
    return-void
.end method
