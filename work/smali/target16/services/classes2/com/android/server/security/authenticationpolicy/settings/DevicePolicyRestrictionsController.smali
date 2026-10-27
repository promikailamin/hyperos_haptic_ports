.class public Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;
.super Ljava/lang/Object;
.source "DevicePolicyRestrictionsController.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SettingController;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mSkipDuringTest:Ljava/util/Set;

.field public mSkipSecurityFeaturesForTest:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-string v0, "DevicePolicyController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "no_usb_file_transfer"

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipDuringTest:Ljava/util/Set;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipSecurityFeaturesForTest:Z

    return-void
.end method


# virtual methods
.method public applySecureLockDeviceValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 6

    .line 64
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "DevicePolicyController"

    if-nez p2, :cond_c

    .line 65
    const-string p0, "DevicePolicyManager is null, cannot apply device policy restrictions."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 70
    iget-boolean v1, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipSecurityFeaturesForTest:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipDuringTest:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping applying restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for test."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 75
    :cond_48
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_4e
    return-void
.end method

.method public final bundleToSet(Landroid/os/Bundle;)Ljava/util/Set;
    .registers 5

    .line 145
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 148
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object p0
.end method

.method public bridge synthetic deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public deserializeOriginalValue(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    .line 122
    const-string/jumbo p0, "set"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/internal/util/XmlUtils;->readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public restoreFromOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 7

    .line 82
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "DevicePolicyController"

    if-nez p2, :cond_c

    .line 83
    const-string p0, "DevicePolicyManager is null, cannot restore device policy restrictions."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_18

    .line 87
    const-string p0, "Original value for device policy restrictions is null, cannot restore device policy restrictions."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getOriginalValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 93
    invoke-virtual {p1}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->getSecureLockDeviceValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    iget-boolean v2, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipSecurityFeaturesForTest:Z

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipDuringTest:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping restoring restriction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for test."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 99
    :cond_5a
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Restriction "

    if-eqz v2, :cond_7a

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was already set prior to secure lock device, leave unchanged."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 103
    :cond_7a
    sget-boolean v2, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->DEBUG:Z

    if-eqz v2, :cond_95

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was not set prior to secure lock device, clear restriction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_95
    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0, v1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_9b
    return-void
.end method

.method public bridge synthetic serializeOriginalValue(Ljava/lang/String;Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 40
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->serializeOriginalValue(Ljava/lang/String;Ljava/util/Set;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public serializeOriginalValue(Ljava/lang/String;Ljava/util/Set;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4

    .line 116
    const-string/jumbo p0, "restriction"

    invoke-static {p2, p0, p3}, Lcom/android/internal/util/XmlUtils;->writeSetXml(Ljava/util/Set;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public setDevicePolicyManager(Landroid/app/admin/DevicePolicyManager;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public setSkipSecurityFeaturesForTest(Z)V
    .registers 2

    .line 132
    iput-boolean p1, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mSkipSecurityFeaturesForTest:Z

    return-void
.end method

.method public storeOriginalValue(Lcom/android/server/security/authenticationpolicy/settings/SettingState;I)V
    .registers 3

    .line 53
    iget-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez p2, :cond_c

    .line 54
    const-string p0, "DevicePolicyController"

    const-string p1, "DevicePolicyManager is null, cannot retrieve original value for device policy restrictions."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_c
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getUserRestrictionsGlobally()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->bundleToSet(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;->setOriginalValue(Ljava/lang/Object;)V

    return-void
.end method
