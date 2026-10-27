.class public Lcom/android/server/statusbar/StatusBarManagerServiceStub;
.super Ljava/lang/Object;
.source "StatusBarManagerServiceStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/statusbar/StatusBarManagerServiceStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/statusbar/IStatusBar;)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "ext"    # Landroid/os/Bundle;
    .param p5, "statusBar"    # Lcom/android/internal/statusbar/IStatusBar;

    .line 18
    return-void
.end method
