.class public final synthetic Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/adb/AdbConnectionPortPoller$PortChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/adb/AdbDebuggingManager;

    return-void
.end method


# virtual methods
.method public final onPortChanged(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->$r8$lambda$2g0Xti2RgQf4mkjMPyIqKew3NFI(Lcom/android/server/adb/AdbDebuggingManager;I)V

    return-void
.end method
