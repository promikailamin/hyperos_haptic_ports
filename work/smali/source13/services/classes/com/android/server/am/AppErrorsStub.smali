.class public Lcom/android/server/am/AppErrorsStub;
.super Ljava/lang/Object;
.source "AppErrorsStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/server/am/AppErrorsStub;
    .registers 1

    .line 9
    const-class v0, Lcom/android/server/am/AppErrorsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppErrorsStub;

    return-object v0
.end method


# virtual methods
.method handleShowAppErrorUI(Landroid/content/Context;Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "errState"    # Lcom/android/server/am/ProcessErrorStateRecord;
    .param p3, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 14
    invoke-virtual {p2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 15
    return-void
.end method
