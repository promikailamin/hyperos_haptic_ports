.class public final Lcom/android/server/os/DeviceIdentifiersPolicyService;
.super Lcom/android/server/SystemService;
.source "DeviceIdentifiersPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;
    }
.end annotation


# static fields
.field private static isGoogleCsp:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetisGoogleCsp()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/os/DeviceIdentifiersPolicyService;->isGoogleCsp:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    const-string/jumbo v0, "ro.miui.google.csp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/os/DeviceIdentifiersPolicyService;->isGoogleCsp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 46
    new-instance v0, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/os/DeviceIdentifiersPolicyService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/DeviceIdentifiersPolicyService$DeviceIdentifiersPolicy;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v1, "device_identifiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/os/DeviceIdentifiersPolicyService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method
