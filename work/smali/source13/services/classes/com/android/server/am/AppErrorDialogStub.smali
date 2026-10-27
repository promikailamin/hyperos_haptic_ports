.class public Lcom/android/server/am/AppErrorDialogStub;
.super Ljava/lang/Object;
.source "AppErrorDialogStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/server/am/AppErrorDialogStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/am/AppErrorDialogStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppErrorDialogStub;

    return-object v0
.end method


# virtual methods
.method onCreate()Z
    .registers 2

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method onInit(Lcom/android/server/am/AppErrorDialog;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .param p1, "dialog"    # Lcom/android/server/am/AppErrorDialog;
    .param p2, "forceQuitMsg"    # Landroid/os/Message;
    .param p3, "reportMsg"    # Landroid/os/Message;

    .line 14
    return-void
.end method

.method setCrashInfo(Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 3
    .param p1, "crashPkg"    # Ljava/lang/String;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 17
    return-void
.end method
