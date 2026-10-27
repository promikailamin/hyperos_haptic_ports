.class public final Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;
.super Ljava/lang/Object;
.source "VirtualInputDeviceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mDeviceToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/input/VirtualInputDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/VirtualInputDeviceController;Landroid/os/IBinder;)V
    .registers 3

    .line 752
    iput-object p1, p0, Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;->this$0:Lcom/android/server/input/VirtualInputDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p2, p0, Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;->mDeviceToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 761
    const-string v0, "VirtualInputController"

    const-string v1, "Virtual input controller binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;->this$0:Lcom/android/server/input/VirtualInputDeviceController;

    iget-object p0, p0, Lcom/android/server/input/VirtualInputDeviceController$BinderDeathRecipient;->mDeviceToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/input/VirtualInputDeviceController;->unregisterInputDevice(Landroid/os/IBinder;)V

    return-void
.end method
