.class final Lcom/android/server/display/color/ColorDisplayService$BinderService;
.super Landroid/hardware/display/IColorDisplayManager$Stub;
.source "ColorDisplayService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 2

    .line 1847
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2175
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "ColorDisplayService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2179
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2181
    :try_start_13
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mdumpInternal(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 2183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2184
    throw p0
.end method

.method public getColorMode()I
    .registers 3

    .line 1866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1868
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1871
    throw p0
.end method

.method public getNightDisplayAutoMode()I
    .registers 3

    .line 2019
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode_enforcePermission()V

    .line 2020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2022
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 2024
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2025
    throw p0
.end method

.method public getNightDisplayAutoModeRaw()I
    .registers 3

    .line 2030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2032
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayAutoModeRawInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2035
    throw p0
.end method

.method public getNightDisplayColorTemperature()I
    .registers 3

    .line 1993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1995
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1997
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1998
    throw p0
.end method

.method public getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .registers 3

    .line 2080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2082
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2084
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2085
    throw p0
.end method

.method public getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .registers 3

    .line 2055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2057
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2059
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2060
    throw p0
.end method

.method public getReduceBrightColorsOffsetFactor()F
    .registers 3

    .line 2150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2152
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->getOffsetFactor()F

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2154
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2155
    throw p0
.end method

.method public getReduceBrightColorsStrength()I
    .registers 3

    .line 2140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2142
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->getStrength()I

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2145
    throw p0
.end method

.method public getTransformCapabilities()I
    .registers 3

    .line 1940
    invoke-super {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities_enforcePermission()V

    .line 1942
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1944
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetTransformCapabilitiesInternal(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 1946
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1947
    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 14

    .line 2190
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to use ADB color transform commands"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2195
    :try_start_11
    new-instance v3, Lcom/android/server/display/color/ColorDisplayShellCommand;

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {v3, v0}, Lcom/android/server/display/color/ColorDisplayShellCommand;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 2196
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 2197
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v4, p0

    move-object v8, p4

    .line 2196
    invoke-virtual/range {v3 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2e

    .line 2200
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2e
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2201
    throw p0
.end method

.method public isDeviceColorManaged()Z
    .registers 3

    .line 1876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1878
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$misDeviceColorManagedInternal(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1881
    throw p0
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .registers 3

    .line 2105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2107
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$misDisplayWhiteBalanceSettingEnabled(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2110
    throw p0
.end method

.method public isNightDisplayActivated()Z
    .registers 3

    .line 1968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1970
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1973
    throw p0
.end method

.method public isReduceBrightColorsActivated()Z
    .registers 3

    .line 2115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2117
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isActivated()Z

    move-result p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2120
    throw p0
.end method

.method public isSaturationActivated()Z
    .registers 4

    .line 1910
    invoke-super {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated_enforcePermission()V

    .line 1912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1914
    :try_start_7
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmGlobalSaturationTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmGlobalSaturationTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object p0

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :catchall_21
    move-exception p0

    goto :goto_28

    :cond_23
    const/4 p0, 0x0

    .line 1917
    :goto_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1918
    throw p0
.end method

.method public setAppSaturationLevel(Ljava/lang/String;I)Z
    .registers 6

    .line 1924
    invoke-super {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel_enforcePermission()V

    .line 1926
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setAppSaturationLevel"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 1928
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1929
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1930
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1932
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_29

    .line 1934
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_29
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1935
    throw p0
.end method

.method public setColorMode(I)V
    .registers 4

    .line 1852
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode_enforcePermission()V

    .line 1854
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setColorMode"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 1856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1858
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetColorModeInternal(Lcom/android/server/display/color/ColorDisplayService;I)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    .line 1860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1861
    throw p0
.end method

.method public setDisplayWhiteBalanceEnabled(Z)Z
    .registers 4

    .line 2091
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled_enforcePermission()V

    .line 2093
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setDisplayWhiteBalanceEnabled"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 2095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2097
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetDisplayWhiteBalanceSettingEnabled(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 2099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2100
    throw p0
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 4

    .line 1953
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated_enforcePermission()V

    .line 1955
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setNightDisplayActivated"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 1957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1959
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 1962
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1963
    throw p0
.end method

.method public setNightDisplayAutoMode(I)Z
    .registers 4

    .line 2004
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode_enforcePermission()V

    .line 2006
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setNightDisplayAutoMode"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2010
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetNightDisplayAutoModeInternal(Lcom/android/server/display/color/ColorDisplayService;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 2012
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2013
    throw p0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 4

    .line 1979
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature_enforcePermission()V

    .line 1981
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setNightDisplayColorTemperature"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 1983
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1985
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmNightDisplayTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setColorTemperature(I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1d

    .line 1987
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1988
    throw p0
.end method

.method public setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .registers 4

    .line 2066
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime_enforcePermission()V

    .line 2068
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setNightDisplayCustomEndTime"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 2070
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2072
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetNightDisplayCustomEndTimeInternal(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 2074
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2075
    throw p0
.end method

.method public setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .registers 4

    .line 2041
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime_enforcePermission()V

    .line 2043
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setNightDisplayCustomStartTime"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 2045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2047
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetNightDisplayCustomStartTimeInternal(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 2049
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2050
    throw p0
.end method

.method public setReduceBrightColorsActivated(Z)Z
    .registers 4

    .line 2126
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated_enforcePermission()V

    .line 2128
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setReduceBrightColorsActivated"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 2130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2132
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetReduceBrightColorsActivatedInternal(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 2134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2135
    throw p0
.end method

.method public setReduceBrightColorsStrength(I)Z
    .registers 4

    .line 2161
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength_enforcePermission()V

    .line 2163
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setReduceBrightColorsStrength"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 2165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2167
    :try_start_f
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$msetReduceBrightColorsStrengthInternal(Lcom/android/server/display/color/ColorDisplayService;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 2169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2170
    throw p0
.end method

.method public setSaturationLevel(I)Z
    .registers 7

    .line 1886
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 1889
    :goto_13
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.CONTROL_DISPLAY_SATURATION"

    .line 1890
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    :cond_22
    if-nez v0, :cond_2f

    if-eqz v1, :cond_27

    goto :goto_2f

    .line 1893
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission required to set display saturation level"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1896
    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const-string/jumbo v1, "setSaturationLevel"

    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$menforceValidCallingUser(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;)V

    .line 1898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1900
    :try_start_3b
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setSaturationLevelInternal(I)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_44

    .line 1902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_44
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1903
    throw p0
.end method
