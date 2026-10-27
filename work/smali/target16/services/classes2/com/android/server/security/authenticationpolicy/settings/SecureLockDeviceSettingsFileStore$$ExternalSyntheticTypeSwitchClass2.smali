.class public abstract synthetic Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore$$ExternalSyntheticTypeSwitchClass2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic switchDispatch(Ljava/lang/Object;I)I
    .registers 4

    .line 0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v1, :cond_1b

    if-eq p1, v0, :cond_24

    goto :goto_2e

    :cond_11
    const-string p1, "enabled"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_1b
    const-string p1, "client-id"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    return v1

    :cond_24
    const-string/jumbo p1, "original-settings"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return v0

    :cond_2e
    :goto_2e
    const/4 p0, -0x2

    return p0
.end method
