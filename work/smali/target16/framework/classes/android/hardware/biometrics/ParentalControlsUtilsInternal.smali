.class public Landroid/hardware/biometrics/ParentalControlsUtilsInternal;
.super Ljava/lang/Object;
.source "ParentalControlsUtilsInternal.java"


# static fields
.field private static final blacklist TEST_ALWAYS_REQUIRE_CONSENT_CLASS:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

.field private static final blacklist TEST_ALWAYS_REQUIRE_CONSENT_PACKAGE:Ljava/lang/String; = "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist containsFlag(II)Z
    .registers 2

    .line 127
    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static blacklist getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 5

    .line 49
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_a

    goto :goto_b

    .line 56
    :cond_a
    return-object v1

    .line 50
    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_package"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "android.hardware.biometrics.ParentalControlsUtilsInternal.require_consent_class"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 54
    if-eqz v0, :cond_28

    if-eqz p0, :cond_28

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-object v1
.end method

.method public static blacklist parentConsentRequired(Landroid/app/admin/DevicePolicyManager;Landroid/app/supervision/SupervisionManager;ILandroid/os/UserHandle;)Z
    .registers 7

    .line 83
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->deprecateDpmSupervisionApis()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 84
    if-eqz p1, :cond_14

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result p1

    if-nez p1, :cond_14

    .line 85
    return v1

    .line 88
    :cond_14
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    goto :goto_25

    .line 90
    :cond_1a
    invoke-static {p0, p3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getSupervisionComponentName(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    .line 91
    if-nez p1, :cond_21

    .line 92
    return v1

    .line 94
    :cond_21
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    .line 97
    :goto_25
    const/16 p1, 0x20

    invoke-static {p0, p1}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result p1

    .line 99
    const/16 p3, 0x80

    invoke-static {p0, p3}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result p3

    .line 101
    const/16 v0, 0x100

    invoke-static {p0, v0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result p0

    .line 105
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    .line 106
    move v1, v2

    goto :goto_5b

    .line 107
    :cond_43
    const/16 p1, 0x8

    invoke-static {p2, p1}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4f

    if-eqz p3, :cond_4f

    .line 108
    move v1, v2

    goto :goto_5b

    .line 109
    :cond_4f
    const/4 p1, 0x4

    invoke-static {p2, p1}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->containsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_5a

    if-eqz p0, :cond_5a

    .line 110
    move v1, v2

    goto :goto_5b

    .line 112
    :cond_5a
    nop

    .line 115
    :goto_5b
    return v1
.end method

.method public static blacklist parentConsentRequired(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/app/supervision/SupervisionManager;ILandroid/os/UserHandle;)Z
    .registers 6

    .line 66
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->getTestComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 67
    const/4 p0, 0x1

    return p0

    .line 70
    :cond_c
    invoke-static {p1, p2, p3, p4}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->parentConsentRequired(Landroid/app/admin/DevicePolicyManager;Landroid/app/supervision/SupervisionManager;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
