.class public interface abstract Lcom/android/server/location/gnss/GnssLocationProviderStub;
.super Ljava/lang/Object;
.source "GnssLocationProviderStub.java"


# static fields
.field public static final CONFIG_GNSS_ENABLE_NOTIFY:Ljava/lang/String; = "ENABLE_NOTIFY"

.field public static final FIRST_FIX:I = 0x3

.field public static final GNSS_ENABLE_UPDATE:I = 0x8

.field public static final LOSE:I = 0x4

.field public static final MIUI_LOCATION_PERMISSION_NAME:Ljava/lang/String; = "com.miui.securitycenter.permission.modem_location"

.field public static final NATIVE_LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final NAV_EVENT_START:I = 0x6

.field public static final NAV_EVENT_STOP:I = 0x7

.field public static final RECOVER:I = 0x5

.field public static final START:I = 0x1

.field public static final STOP:I = 0x2


# direct methods
.method public static getInstance()Lcom/android/server/location/gnss/GnssLocationProviderStub;
    .registers 1

    .line 31
    const-class v0, Lcom/android/server/location/gnss/GnssLocationProviderStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssLocationProviderStub;

    return-object v0
.end method


# virtual methods
.method public getConfig(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "config"    # Ljava/lang/String;
    .param p3, "defaultConfig"    # Ljava/lang/String;

    .line 43
    return-object p3
.end method

.method public getLowerAccLocation(Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .line 76
    return-object p1
.end method

.method public getSendingSwitch()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public hasLocationPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public loadLocationInformation()Ljava/lang/StringBuilder;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "empty location information."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    return-object v0
.end method

.method public abstract notifyCallerName(Ljava/lang/String;)V
.end method

.method public abstract notifyCallerName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyState(I)V
.end method

.method public abstract notifyStateWithPackageName(Ljava/lang/String;I)V
.end method

.method public precisionProcessByType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "nmea"    # Ljava/lang/String;

    .line 72
    return-object p1
.end method

.method public abstract sendNfwbroadcast(Landroid/content/Context;)V
.end method

.method public abstract setNfwProxyAppConfig(Ljava/util/Properties;Ljava/lang/String;)V
.end method

.method public abstract setSendingSwitch(Z)V
.end method

.method public abstract writeLocationInformation(Ljava/lang/String;)V
.end method
