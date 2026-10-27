.class public Lcom/android/server/TelephonyRegistry$ConfigurationProvider;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getRegistrationLimit$0()Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    const-string/jumbo v0, "telephony"

    const-string/jumbo v1, "phone_state_listener_per_pid_registration_limit"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isActiveDataSubIdReadPhoneStateEnforcedInPlatformCompat$3(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    const-wide/32 v0, 0xae06792

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isCallStateReadPhoneStateEnforcedInPlatformCompat$2(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    const-wide/32 v0, 0x95f3323

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isCellInfoReadPhoneStateEnforcedInPlatformCompat$4(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    const-wide/32 v0, 0xafc8f5e

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isDisplayInfoNrAdvancedSupported$6(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    const-wide/32 v0, 0xad3e56b

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isDisplayInfoReadPhoneStateEnforcedInPlatformCompat$5(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    const-wide/32 v0, 0xaeae033

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$isRegistrationLimitEnabledInPlatformCompat$1(I)Ljava/lang/Boolean;
    .registers 3
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    const-wide/32 v0, 0x8fe4129

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRegistrationLimit()I
    .registers 2

    .line 219
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isActiveDataSubIdReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 256
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCallStateReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 243
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isCellInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 269
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDisplayInfoNrAdvancedSupported(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 292
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDisplayInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 281
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRegistrationLimitEnabledInPlatformCompat(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 232
    new-instance v0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
