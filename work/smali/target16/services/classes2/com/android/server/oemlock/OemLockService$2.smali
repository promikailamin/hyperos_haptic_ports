.class public Lcom/android/server/oemlock/OemLockService$2;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "OemLockService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method public constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockName()Ljava/lang/String;
    .registers 3

    .line 125
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->getLockName_enforcePermission()V

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    :try_start_7
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->getLockName()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw p0
.end method

.method public isDeviceOemUnlocked()Z
    .registers 2

    .line 230
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked_enforcePermission()V

    .line 232
    const-string/jumbo p0, "ro.boot.flash.locked"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public isOemUnlockAllowed()Z
    .registers 4

    .line 214
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed_enforcePermission()V

    .line 216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    :try_start_7
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :catchall_21
    move-exception p0

    goto :goto_2d

    :cond_23
    const/4 v2, 0x0

    .line 220
    :goto_24
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0, v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_21

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw p0
.end method

.method public isOemUnlockAllowedByCarrier()Z
    .registers 3

    .line 153
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier_enforcePermission()V

    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    :try_start_7
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw p0
.end method

.method public isOemUnlockAllowedByUser()Z
    .registers 3

    .line 196
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser_enforcePermission()V

    .line 198
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 200
    :try_start_7
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    move-result p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw p0
.end method

.method public setOemUnlockAllowedByCarrier(Z[B)V
    .registers 5

    .line 138
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier_enforcePermission()V

    .line 140
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 144
    :try_start_c
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 146
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    throw p0
.end method

.method public setOemUnlockAllowedByUser(Z)V
    .registers 5

    .line 168
    invoke-super {p0}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser_enforcePermission()V

    .line 170
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 174
    :cond_a
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V

    .line 176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    :try_start_13
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$misOemUnlockAllowedByAdmin(Lcom/android/server/oemlock/OemLockService;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 182
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 186
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$fgetmOemLock(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    invoke-static {p0, p1}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_39

    .line 189
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_39
    move-exception p0

    goto :goto_4b

    .line 183
    :cond_3b
    :try_start_3b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Carrier does not allow OEM unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Admin does not allow OEM unlock"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_39

    .line 189
    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0
.end method
