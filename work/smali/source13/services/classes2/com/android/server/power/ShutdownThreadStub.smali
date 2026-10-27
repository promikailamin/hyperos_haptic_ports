.class public Lcom/android/server/power/ShutdownThreadStub;
.super Ljava/lang/Object;
.source "ShutdownThreadStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/power/ShutdownThreadStub;
    .registers 1

    .line 11
    const-class v0, Lcom/android/server/power/ShutdownThreadStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/ShutdownThreadStub;

    return-object v0
.end method


# virtual methods
.method isCustomizedShutdownAnim()Z
    .registers 2

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method showShutdownAnimOrDialog(Landroid/content/Context;ZLandroid/app/ProgressDialog;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isReboot"    # Z
    .param p3, "pd"    # Landroid/app/ProgressDialog;

    .line 15
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->show()V

    .line 16
    return-void
.end method
