.class public final Lcom/miui/base/MiuiStubImplManifest$$;
.super Ljava/lang/Object;
.source "MiuiStubImplManifest$$.java"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist collectImplProviders(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;)V"
        }
    .end annotation

    .line 124
    .local p1, "outProviders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    new-instance v0, Landroid/net/wifi/MiuiScanResult$Provider;

    invoke-direct {v0}, Landroid/net/wifi/MiuiScanResult$Provider;-><init>()V

    const-string v1, "android.net.wifi.nl80211.IWifiScanResultStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v0, Landroid/net/wifi/MiuiWifiRssiFiltering$Provider;

    invoke-direct {v0}, Landroid/net/wifi/MiuiWifiRssiFiltering$Provider;-><init>()V

    const-string v1, "android.net.wifi.nl80211.IWifiRssiFilteringStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Landroid/accounts/AccountImpl$Provider;

    invoke-direct {v0}, Landroid/accounts/AccountImpl$Provider;-><init>()V

    const-string v1, "android.accounts.AccountStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Landroid/accounts/AccountManagerImpl$Provider;

    invoke-direct {v0}, Landroid/accounts/AccountManagerImpl$Provider;-><init>()V

    const-string v1, "android.accounts.AccountManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider;

    invoke-direct {v0}, Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider;-><init>()V

    const-string v1, "android.accounts.ChooseTypeAndAccountActivityStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Landroid/app/ActivityImpl$Provider;

    invoke-direct {v0}, Landroid/app/ActivityImpl$Provider;-><init>()V

    const-string v1, "android.app.ActivityStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/app/ActivityThreadImpl$Provider;

    invoke-direct {v0}, Landroid/app/ActivityThreadImpl$Provider;-><init>()V

    const-string v1, "android.app.ActivityThreadStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/app/AppOpsManagerStubImpl$Provider;

    invoke-direct {v0}, Landroid/app/AppOpsManagerStubImpl$Provider;-><init>()V

    const-string v1, "android.app.AppOpsManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Landroid/app/ApplicationImpl$Provider;

    invoke-direct {v0}, Landroid/app/ApplicationImpl$Provider;-><init>()V

    const-string v1, "android.app.ApplicationStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/app/StatusBarManagerStubImpl$Provider;

    invoke-direct {v0}, Landroid/app/StatusBarManagerStubImpl$Provider;-><init>()V

    const-string v1, "android.app.StatusBarManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/app/SystemServiceRegistryImpl$Provider;

    invoke-direct {v0}, Landroid/app/SystemServiceRegistryImpl$Provider;-><init>()V

    const-string v1, "android.app.SystemServiceRegistryStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance v0, Landroid/app/TaskSnapshotHelperImpl$Provider;

    invoke-direct {v0}, Landroid/app/TaskSnapshotHelperImpl$Provider;-><init>()V

    const-string v1, "android.app.TaskSnapshotHelperStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/app/WallpaperColorsStubImpl$Provider;

    invoke-direct {v0}, Landroid/app/WallpaperColorsStubImpl$Provider;-><init>()V

    const-string v1, "android.app.WallpaperColorsStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/app/WallpaperManagerImpl$Provider;

    invoke-direct {v0}, Landroid/app/WallpaperManagerImpl$Provider;-><init>()V

    const-string v1, "android.app.WallpaperManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Landroid/app/servertransaction/BoundsCompat$Provider;

    invoke-direct {v0}, Landroid/app/servertransaction/BoundsCompat$Provider;-><init>()V

    const-string v1, "android.app.servertransaction.BoundsCompatStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Landroid/perf/PerfStubImpl$Provider;

    invoke-direct {v0}, Landroid/perf/PerfStubImpl$Provider;-><init>()V

    const-string v1, "android.perf.PerfStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Landroid/perf/PerfMTKStubImpl$Provider;

    invoke-direct {v0}, Landroid/perf/PerfMTKStubImpl$Provider;-><init>()V

    const-string v1, "android.perf.PerfMTKStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/powerconsumption/MiuiDrawableImpl$Provider;

    invoke-direct {v0}, Landroid/powerconsumption/MiuiDrawableImpl$Provider;-><init>()V

    const-string v1, "android.powerconsumption.MiuiDrawableStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Landroid/content/ClipboardManagerStubImpl$Provider;

    invoke-direct {v0}, Landroid/content/ClipboardManagerStubImpl$Provider;-><init>()V

    const-string v1, "android.content.ClipboardManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/content/pm/PackageManagerImpl$Provider;

    invoke-direct {v0}, Landroid/content/pm/PackageManagerImpl$Provider;-><init>()V

    const-string v1, "android.content.pm.PackageManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/content/pm/PackageParserImpl$Provider;

    invoke-direct {v0}, Landroid/content/pm/PackageParserImpl$Provider;-><init>()V

    const-string v1, "android.content.pm.PackageParserStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Landroid/content/res/AssetManagerImpl$Provider;

    invoke-direct {v0}, Landroid/content/res/AssetManagerImpl$Provider;-><init>()V

    const-string v1, "android.content.res.AssetManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Landroid/graphics/FontManagerStubImpl$Provider;

    invoke-direct {v0}, Landroid/graphics/FontManagerStubImpl$Provider;-><init>()V

    const-string v1, "android.graphics.FontManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Landroid/media/RingtoneManagerStubImpl$Provider;

    invoke-direct {v0}, Landroid/media/RingtoneManagerStubImpl$Provider;-><init>()V

    const-string v1, "android.media.RingtoneManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/os/BinderAllocationTracker$Provider;

    invoke-direct {v0}, Landroid/os/BinderAllocationTracker$Provider;-><init>()V

    const-string v1, "android.os.BinderStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v0, Landroid/os/CombinedVibrationStubImpl$Provider;

    invoke-direct {v0}, Landroid/os/CombinedVibrationStubImpl$Provider;-><init>()V

    const-string v1, "android.os.CombinedVibrationStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Landroid/os/TurboSchedMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/TurboSchedMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.TurboSchedMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Landroid/os/VibrationEffectStubImpl$Provider;

    invoke-direct {v0}, Landroid/os/VibrationEffectStubImpl$Provider;-><init>()V

    const-string v1, "android.os.VibrationEffectStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/os/VibratorStubImpl$Provider;

    invoke-direct {v0}, Landroid/os/VibratorStubImpl$Provider;-><init>()V

    const-string v1, "android.os.VibratorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v0, Landroid/os/perfdebug/BinderMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/BinderMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.BinderMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Landroid/os/perfdebug/BroadcastMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/BroadcastMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.BroadcastMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/os/perfdebug/ChoreographerMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/ChoreographerMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.ChoreographerMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Landroid/os/perfdebug/ContentProviderMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/ContentProviderMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.ContentProviderMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Landroid/os/perfdebug/InputEventMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/InputEventMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.InputEventMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v0, Landroid/os/perfdebug/MessageMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/MessageMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.MessageMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.MessageMonitor$MessageMonitorInfo"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v0, Landroid/os/perfdebug/OtherMethodMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/OtherMethodMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.OtherMethodMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v0, Landroid/os/perfdebug/PerfDebugMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/PerfDebugMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.PerfDebugMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Landroid/os/perfdebug/ServiceMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/ServiceMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.ServiceMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Landroid/os/perfdebug/ViewMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/ViewMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.ViewMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Landroid/os/perfdebug/ViewRootMonitorImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/ViewRootMonitorImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.ViewRootMonitor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/os/perfdebug/VsyncFrameImpl$Provider;

    invoke-direct {v0}, Landroid/os/perfdebug/VsyncFrameImpl$Provider;-><init>()V

    const-string v1, "android.os.perfdebug.VsyncFrame"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/hovermode/MiuiHoverModeImpl$Provider;

    invoke-direct {v0}, Landroid/hovermode/MiuiHoverModeImpl$Provider;-><init>()V

    const-string v1, "android.hovermode.MiuiHoverModeStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Landroid/appcompat/ApplicationCompatUtilsImpl$Provider;

    invoke-direct {v0}, Landroid/appcompat/ApplicationCompatUtilsImpl$Provider;-><init>()V

    const-string v1, "android.appcompat.ApplicationCompatUtilsStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v0, Landroid/provider/SettingsImpl$Provider;

    invoke-direct {v0}, Landroid/provider/SettingsImpl$Provider;-><init>()V

    const-string v1, "android.provider.SettingsStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Landroid/speech/tts/TtsEnginesInjector$Provider;

    invoke-direct {v0}, Landroid/speech/tts/TtsEnginesInjector$Provider;-><init>()V

    const-string v1, "android.speech.tts.TtsEnginesInjectorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Landroid/util/GMSDownscaleStubImpl$Provider;

    invoke-direct {v0}, Landroid/util/GMSDownscaleStubImpl$Provider;-><init>()V

    const-string v1, "android.util.GMSDownscaleStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Landroid/util/HapticFeedbackUtilStubImpl$Provider;

    invoke-direct {v0}, Landroid/util/HapticFeedbackUtilStubImpl$Provider;-><init>()V

    const-string v1, "android.util.HapticFeedbackUtilStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Landroid/util/MiuiAppSizeCompatModeImpl$Provider;

    invoke-direct {v0}, Landroid/util/MiuiAppSizeCompatModeImpl$Provider;-><init>()V

    const-string v1, "android.util.MiuiAppSizeCompatModeStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/view/ChoreographerInjectorStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/ChoreographerInjectorStubImpl$Provider;-><init>()V

    const-string v1, "android.view.animation.ChoreographerInjectorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/HandWritingAllyKeyboardTypeStubImpl$Provider;-><init>()V

    const-string v1, "android.view.HandWritingAllyKeyboardTypeStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Landroid/view/HandWritingStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/HandWritingStubImpl$Provider;-><init>()V

    const-string v1, "android.view.HandWritingStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/view/InputEventInterceptImpl$Provider;

    invoke-direct {v0}, Landroid/view/InputEventInterceptImpl$Provider;-><init>()V

    const-string v1, "android.view.InputEventInterceptStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Landroid/view/InputEventLogStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/InputEventLogStubImpl$Provider;-><init>()V

    const-string v1, "android.view.InputEventLogStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Landroid/view/InsetsControllerImpl$Provider;

    invoke-direct {v0}, Landroid/view/InsetsControllerImpl$Provider;-><init>()V

    const-string v1, "android.view.InsetsControllerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/view/ScreenOptimizeObserverProxyImpl$Provider;

    invoke-direct {v0}, Landroid/view/ScreenOptimizeObserverProxyImpl$Provider;-><init>()V

    const-string v1, "android.view.ScreenOptimizeObserverProxyStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Landroid/view/SurfaceControlImpl$Provider;

    invoke-direct {v0}, Landroid/view/SurfaceControlImpl$Provider;-><init>()V

    const-string v1, "android.view.SurfaceControlStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Landroid/view/ViewRootImplStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/ViewRootImplStubImpl$Provider;-><init>()V

    const-string v1, "android.view.ViewRootImplStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Landroid/view/ViewScrollStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/ViewScrollStubImpl$Provider;-><init>()V

    const-string v1, "android.view.ViewScrollStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Landroid/view/ViewStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/ViewStubImpl$Provider;-><init>()V

    const-string v1, "android.view.IViewStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Landroid/view/VsyncRateControllerStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/VsyncRateControllerStubImpl$Provider;-><init>()V

    const-string v1, "android.view.VsyncRateControllerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance v0, Landroid/view/WindowLayoutStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/WindowLayoutStubImpl$Provider;-><init>()V

    const-string v1, "android.view.WindowLayoutStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Landroid/view/WindowManagerGlobalStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/WindowManagerGlobalStubImpl$Provider;-><init>()V

    const-string v1, "android.view.WindowManagerGlobalStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Landroid/view/animation/AnimationUtilsImpl$Provider;

    invoke-direct {v0}, Landroid/view/animation/AnimationUtilsImpl$Provider;-><init>()V

    const-string v1, "android.view.animation.AnimationUtilsStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider;

    invoke-direct {v0}, Lcom/xiaomi/aiinput/AIInputTextStubImpl$Provider;-><init>()V

    const-string v1, "com.xiaomi.aiinput.AIInputTextStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Landroid/widget/AbsListViewStubImpl$Provider;

    invoke-direct {v0}, Landroid/widget/AbsListViewStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.AbsListViewStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Landroid/widget/AbsSeekBarImpl$Provider;

    invoke-direct {v0}, Landroid/widget/AbsSeekBarImpl$Provider;-><init>()V

    const-string v1, "android.widget.AbsSeekBarStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider;

    invoke-direct {v0}, Lbase/core/java/android/widget/ClipboardAlertDialogStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.ClipboardAlertDialogStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v0, Landroid/widget/CompoundButtonImpl$Provider;

    invoke-direct {v0}, Landroid/widget/CompoundButtonImpl$Provider;-><init>()V

    const-string v1, "android.widget.CompoundButtonStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Landroid/widget/EditTextStubImpl$Provider;

    invoke-direct {v0}, Landroid/widget/EditTextStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.EditTextStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Landroid/widget/EditorStubImpl$Provider;

    invoke-direct {v0}, Landroid/widget/EditorStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.EditorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    new-instance v0, Landroid/widget/FlingAnimationStubImpl$Provider;

    invoke-direct {v0}, Landroid/widget/FlingAnimationStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.FlingAnimationStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider;

    invoke-direct {v0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.OverScrollerSplineOverScrollerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider;

    invoke-direct {v0}, Landroid/widget/TextViewOnReceiveContentListenerStubImpl$Provider;-><init>()V

    const-string v1, "android.widget.TextViewOnReceiveContentListenerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Landroid/widget/ToastInjectorImpl$Provider;

    invoke-direct {v0}, Landroid/widget/ToastInjectorImpl$Provider;-><init>()V

    const-string v1, "android.widget.ToastStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Landroid/inputmethodservice/InputMethodServiceInjector$Provider;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodServiceInjector$Provider;-><init>()V

    const-string v1, "android.inputmethodservice.InputMethodServiceStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Lmiui/util/GetCameraOccupierStubImpl$Provider;

    invoke-direct {v0}, Lmiui/util/GetCameraOccupierStubImpl$Provider;-><init>()V

    const-string v1, "miui.utils.GetCameraOccupierStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/android/internal/policy/PhoneWindowStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindowStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.policy.PhoneWindowStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lcom/android/internal/policy/DecorViewStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorViewStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.policy.DecorViewStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/policy/DecorViewMultiWinStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.policy.DecorViewMultiWinStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Lcom/android/internal/policy/TransitionAnimationStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/policy/TransitionAnimationStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.policy.TransitionAnimationStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsManagerStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.os.BatteryStatsManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/android/internal/os/ProcessCpuTrackerImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTrackerImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.os.ProcessCpuTrackerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Lcom/android/internal/os/RuntimeInitImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/os/RuntimeInitImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.os.RuntimeInitStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/os/ScreenPowerCalculatorImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.os.ScreenPowerCalculatorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/android/internal/os/ZygoteInitImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/os/ZygoteInitImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.os.ZygoteInitStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Lcom/android/internal/app/AlertControllerImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/app/AlertControllerImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.app.AlertControllerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Lcom/android/internal/app/LocalePickerStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/app/LocalePickerStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.app.LocalePickerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/android/internal/app/ResolverActivityStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/app/ResolverActivityStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.app.ResolverActivityStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider;

    invoke-direct {v0}, Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider;-><init>()V

    const-string v1, "com.android.internal.app.SuspendedAppActivityStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lcom/miui/enterprise/MiuiApplicationHelper$Provider;

    invoke-direct {v0}, Lcom/miui/enterprise/MiuiApplicationHelper$Provider;-><init>()V

    const-string v1, "com.miui.enterprise.ApplicationHelper$Stub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Lcom/miui/enterprise/Restrictions$Provider;

    invoke-direct {v0}, Lcom/miui/enterprise/Restrictions$Provider;-><init>()V

    const-string v1, "com.miui.enterprise.RestrictionsHelper$Stub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v0, Lcom/miui/misight/MiEventImpl$Provider;

    invoke-direct {v0}, Lcom/miui/misight/MiEventImpl$Provider;-><init>()V

    const-string v1, "com.miui.misight.MiEventStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/miui/misight/MiSightImpl$Provider;

    invoke-direct {v0}, Lcom/miui/misight/MiSightImpl$Provider;-><init>()V

    const-string v1, "com.miui.misight.MiSightStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Lcom/miui/xspace/XSpaceManagerImpl$Provider;

    invoke-direct {v0}, Lcom/miui/xspace/XSpaceManagerImpl$Provider;-><init>()V

    const-string v1, "com.miui.xspace.XSpaceManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/miui/autoui/AutoUILogHelperImpl$Provider;

    invoke-direct {v0}, Lcom/miui/autoui/AutoUILogHelperImpl$Provider;-><init>()V

    const-string v1, "com.miui.autoui.AutoUILogHelper"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Lcom/miui/autoui/MIUIAutoUIImpl$Provider;

    invoke-direct {v0}, Lcom/miui/autoui/MIUIAutoUIImpl$Provider;-><init>()V

    const-string v1, "com.miui.autoui.MIUIAutoUIStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/miui/autoui/MIUIAutoUIManagerImpl$Provider;

    invoke-direct {v0}, Lcom/miui/autoui/MIUIAutoUIManagerImpl$Provider;-><init>()V

    const-string v1, "com.miui.autoui.MIUIAutoUIManagerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lcom/miui/autoui/WebViewClientDelegateImpl$Provider;

    invoke-direct {v0}, Lcom/miui/autoui/WebViewClientDelegateImpl$Provider;-><init>()V

    const-string v1, "com.miui.autoui.WebViewClientDelegate"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider;

    invoke-direct {v0}, Lcom/xiaomi/freeform/MiuiFreeformImpl$Provider;-><init>()V

    const-string v1, "com.xiaomi.freeform.MiuiFreeformStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MiuiMirrorImpl$Provider;-><init>()V

    const-string v1, "com.xiaomi.mirror.MiuiMirrorStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider;

    invoke-direct {v0}, Lcom/xiaomi/screenprojection/MiuiScreenProjectionStubImpl$Provider;-><init>()V

    const-string v1, "com.xiaomi.screenprojection.IMiuiScreenProjectionStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl$Provider;

    invoke-direct {v0}, Lcom/xiaomi/multiwin/MiuiMultiWinReflectImpl$Provider;-><init>()V

    const-string v1, "com.xiaomi.multiwin.MiuiMultiWinReflectStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Landroid/media/MediaFunctionStubImpl$Provider;

    invoke-direct {v0}, Landroid/media/MediaFunctionStubImpl$Provider;-><init>()V

    const-string v1, "android.media.MediaFunctionStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Landroid/media/MediaPlayerStubImpl$Provider;

    invoke-direct {v0}, Landroid/media/MediaPlayerStubImpl$Provider;-><init>()V

    const-string v1, "android.media.MediaPlayerStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v0, Landroid/view/ForceDarkHelperStubImpl$Provider;

    invoke-direct {v0}, Landroid/view/ForceDarkHelperStubImpl$Provider;-><init>()V

    const-string v1, "android.view.ForceDarkHelperStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Landroid/view/ViewForceDarkStateImpl$Provider;

    invoke-direct {v0}, Landroid/view/ViewForceDarkStateImpl$Provider;-><init>()V

    const-string v1, "android.view.ViewForceDarkStateStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public final blacklist collectImplProvidersClass(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outProvidersClass"    # Ljava/util/Map;
    .param p2, "classloader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 236
    const-string v0, "android.net.wifi.MiuiScanResult$Provider"

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.net.wifi.nl80211.IWifiScanResultStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "android.net.wifi.MiuiWifiRssiFiltering$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.net.wifi.nl80211.IWifiRssiFilteringStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "android.accounts.AccountImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.accounts.AccountStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "android.accounts.AccountManagerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.accounts.AccountManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "android.accounts.ChooseTypeAndAccountActivityImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.accounts.ChooseTypeAndAccountActivityStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "android.app.ActivityImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.ActivityStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "android.app.ActivityThreadImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.ActivityThreadStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "android.app.AppOpsManagerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.AppOpsManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "android.app.ApplicationImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.ApplicationStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "android.app.StatusBarManagerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.StatusBarManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "android.app.SystemServiceRegistryImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.SystemServiceRegistryStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "android.app.TaskSnapshotHelperImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.TaskSnapshotHelperStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "android.app.WallpaperColorsStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.WallpaperColorsStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "android.app.WallpaperManagerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.WallpaperManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "android.app.servertransaction.BoundsCompat$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.app.servertransaction.BoundsCompatStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "android.perf.PerfStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.perf.PerfStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "android.perf.PerfMTKStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.perf.PerfMTKStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "android.powerconsumption.MiuiDrawableImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.powerconsumption.MiuiDrawableStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "android.content.ClipboardManagerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.content.ClipboardManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "android.content.pm.PackageManagerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.content.pm.PackageManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "android.content.pm.PackageParserImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.content.pm.PackageParserStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "android.content.res.AssetManagerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.content.res.AssetManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "android.graphics.FontManagerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.graphics.FontManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "android.media.RingtoneManagerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.media.RingtoneManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "android.os.BinderAllocationTracker$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.BinderStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v0, "android.os.CombinedVibrationStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.CombinedVibrationStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v0, "android.os.TurboSchedMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.TurboSchedMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "android.os.VibrationEffectStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.VibrationEffectStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "android.os.VibratorStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.VibratorStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v0, "android.os.perfdebug.BinderMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.BinderMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "android.os.perfdebug.BroadcastMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.BroadcastMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v0, "android.os.perfdebug.ChoreographerMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.ChoreographerMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v0, "android.os.perfdebug.ContentProviderMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.ContentProviderMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "android.os.perfdebug.InputEventMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.InputEventMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v0, "android.os.perfdebug.MessageMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.MessageMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "android.os.perfdebug.MessageMonitorImpl$MessageMonitorInfoImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.MessageMonitor$MessageMonitorInfo"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "android.os.perfdebug.OtherMethodMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.OtherMethodMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "android.os.perfdebug.PerfDebugMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.PerfDebugMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "android.os.perfdebug.ServiceMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.ServiceMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "android.os.perfdebug.ViewMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.ViewMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "android.os.perfdebug.ViewRootMonitorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.ViewRootMonitor"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "android.os.perfdebug.VsyncFrameImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.os.perfdebug.VsyncFrame"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "android.hovermode.MiuiHoverModeImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.hovermode.MiuiHoverModeStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "android.appcompat.ApplicationCompatUtilsImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.appcompat.ApplicationCompatUtilsStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "android.provider.SettingsImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.provider.SettingsStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v0, "android.speech.tts.TtsEnginesInjector$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.speech.tts.TtsEnginesInjectorStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v0, "android.util.GMSDownscaleStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.util.GMSDownscaleStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, "android.util.HapticFeedbackUtilStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.util.HapticFeedbackUtilStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v0, "android.util.MiuiAppSizeCompatModeImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.util.MiuiAppSizeCompatModeStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v0, "android.view.ChoreographerInjectorStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.animation.ChoreographerInjectorStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "android.view.HandWritingAllyKeyboardTypeStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.HandWritingAllyKeyboardTypeStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "android.view.HandWritingStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.HandWritingStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "android.view.InputEventInterceptImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.InputEventInterceptStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v0, "android.view.InputEventLogStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.InputEventLogStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v0, "android.view.InsetsControllerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.InsetsControllerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "android.view.ScreenOptimizeObserverProxyImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.ScreenOptimizeObserverProxyStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "android.view.SurfaceControlImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.SurfaceControlStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "android.view.ViewRootImplStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.ViewRootImplStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "android.view.ViewScrollStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.ViewScrollStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "android.view.ViewStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.IViewStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "android.view.VsyncRateControllerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.VsyncRateControllerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "android.view.WindowLayoutStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.WindowLayoutStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "android.view.WindowManagerGlobalStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.WindowManagerGlobalStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "android.view.animation.AnimationUtilsImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.animation.AnimationUtilsStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "com.xiaomi.aiinput.AIInputTextStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.xiaomi.aiinput.AIInputTextStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "android.widget.AbsListViewStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.AbsListViewStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "android.widget.AbsSeekBarImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.AbsSeekBarStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "base.core.java.android.widget.ClipboardAlertDialogStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.ClipboardAlertDialogStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "android.widget.CompoundButtonImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.CompoundButtonStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "android.widget.EditTextStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.EditTextStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "android.widget.EditorStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.EditorStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "android.widget.FlingAnimationStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.FlingAnimationStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "android.widget.OverScrollerSplineOverScrollerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.OverScrollerSplineOverScrollerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "android.widget.TextViewOnReceiveContentListenerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.TextViewOnReceiveContentListenerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "android.widget.ToastInjectorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.widget.ToastStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "android.inputmethodservice.InputMethodServiceInjector$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.inputmethodservice.InputMethodServiceStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "miui.util.GetCameraOccupierStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "miui.utils.GetCameraOccupierStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "com.android.internal.policy.PhoneWindowStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.policy.PhoneWindowStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "com.android.internal.policy.DecorViewStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.policy.DecorViewStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "com.android.internal.policy.DecorViewMultiWinStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.policy.DecorViewMultiWinStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "com.android.internal.policy.TransitionAnimationStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.policy.TransitionAnimationStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, "com.android.internal.os.BatteryStatsManagerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.os.BatteryStatsManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, "com.android.internal.os.ProcessCpuTrackerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.os.ProcessCpuTrackerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, "com.android.internal.os.RuntimeInitImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.os.RuntimeInitStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, "com.android.internal.os.ScreenPowerCalculatorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.os.ScreenPowerCalculatorStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, "com.android.internal.os.ZygoteInitImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.os.ZygoteInitStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v0, "com.android.internal.app.AlertControllerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.app.AlertControllerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, "com.android.internal.app.LocalePickerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.app.LocalePickerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v0, "com.android.internal.app.ResolverActivityStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.app.ResolverActivityStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v0, "com.android.internal.app.SuspendedAppActivityStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.android.internal.app.SuspendedAppActivityStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, "com.miui.enterprise.MiuiApplicationHelper$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.enterprise.ApplicationHelper$Stub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, "com.miui.enterprise.Restrictions$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.enterprise.RestrictionsHelper$Stub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, "com.miui.misight.MiEventImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.misight.MiEventStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v0, "com.miui.misight.MiSightImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.misight.MiSightStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "com.miui.xspace.XSpaceManagerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.xspace.XSpaceManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, "com.miui.autoui.AutoUILogHelperImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.autoui.AutoUILogHelper"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, "com.miui.autoui.MIUIAutoUIImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.autoui.MIUIAutoUIStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "com.miui.autoui.MIUIAutoUIManagerImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.autoui.MIUIAutoUIManagerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "com.miui.autoui.WebViewClientDelegateImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.miui.autoui.WebViewClientDelegate"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "com.xiaomi.freeform.MiuiFreeformImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.xiaomi.freeform.MiuiFreeformStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, "com.xiaomi.mirror.MiuiMirrorImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.xiaomi.mirror.MiuiMirrorStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, "com.xiaomi.screenprojection.MiuiScreenProjectionStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.xiaomi.screenprojection.IMiuiScreenProjectionStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, "com.xiaomi.multiwin.MiuiMultiWinReflectImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.xiaomi.multiwin.MiuiMultiWinReflectStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "android.media.MediaFunctionStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.media.MediaFunctionStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "android.media.MediaPlayerStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.media.MediaPlayerStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "android.view.ForceDarkHelperStubImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "android.view.ForceDarkHelperStub"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, "android.view.ViewForceDarkStateImpl$Provider"

    invoke-static {v0, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.view.ViewForceDarkStateStub"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-void
.end method
