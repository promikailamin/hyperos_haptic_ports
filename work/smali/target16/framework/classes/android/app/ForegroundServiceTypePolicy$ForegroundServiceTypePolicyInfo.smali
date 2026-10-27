.class public final Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForegroundServiceTypePolicyInfo"
.end annotation


# static fields
.field private static final blacklist INVALID_CHANGE_ID:J


# instance fields
.field final blacklist mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field final blacklist mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

.field blacklist mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

.field final blacklist mDeprecationChangeId:J

.field final blacklist mDisabledChangeId:J

.field final blacklist mForegroundOnlyPermission:Z

.field final blacklist mPermissionEnforcementFlag:Ljava/lang/String;

.field final blacklist mPermissionEnforcementFlagDefaultValue:Z

.field volatile blacklist mPermissionEnforcementFlagValue:Z

.field final blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdatePermissionEnforcementFlagIfNecessary(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(IJJLandroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;Ljava/lang/String;ZZ)V
    .registers 11

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    .line 876
    iput-wide p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    .line 877
    iput-wide p4, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    .line 878
    iput-object p6, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 879
    iput-object p7, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    .line 880
    iput-object p8, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    .line 881
    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    .line 882
    iput-boolean p9, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    .line 883
    iput-boolean p10, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    .line 884
    return-void
.end method

.method private blacklist clearOverrideForTest(JLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1039
    nop

    .line 1040
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1039
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 1041
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->clearOverrideForTest(JLjava/lang/String;)Z

    .line 1042
    return-void
.end method

.method private static blacklist isValidChangeId(J)Z
    .registers 4

    .line 860
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private blacklist overrideChangeIdForTest(JZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1020
    invoke-static {p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1021
    return-void

    .line 1023
    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1024
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1025
    if-eqz p3, :cond_1b

    .line 1026
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1028
    :cond_1b
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1030
    :goto_22
    new-instance p1, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance p2, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {p2, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p1, p2}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 1032
    nop

    .line 1033
    const-string/jumbo p2, "platform_compat"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 1032
    invoke-static {p2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p2

    .line 1034
    invoke-interface {p2, p1, p4}, Lcom/android/internal/compat/IPlatformCompat;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method private blacklist toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 916
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    const/16 v1, 0x20

    if-eqz v0, :cond_17

    .line 917
    const-string v0, "all of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    :cond_17
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-eqz v0, :cond_2c

    .line 922
    const-string v0, "any of the permissions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 926
    :cond_2c
    return-object p1
.end method

.method private blacklist updatePermissionEnforcementFlagIfNecessary(Ljava/lang/String;)V
    .registers 4

    .line 930
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    .line 931
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_1a

    .line 934
    :cond_d
    iget-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagDefaultValue:Z

    const-string v1, "activity_manager"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlagValue:Z

    .line 938
    return-void

    .line 932
    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public blacklist clearTypeDisabledForTest(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->clearOverrideForTest(JLjava/lang/String;)V

    .line 1010
    return-void
.end method

.method public blacklist getForegroundServiceType()I
    .registers 2

    .line 891
    iget v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    return v0
.end method

.method public blacklist getPermissionEnforcementFlagForTest()Ljava/lang/String;
    .registers 2

    .line 1050
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mPermissionEnforcementFlag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequiredAllOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 956
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_9

    .line 957
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 959
    :cond_9
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAllOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getRequiredAnyOfPermissionsForTest(Landroid/content/Context;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    if-nez v0, :cond_9

    .line 971
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 973
    :cond_9
    iget-object v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mAnyOfPermissions:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;

    invoke-virtual {v0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->toStringArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public blacklist hasForegroundOnlyPermission()Z
    .registers 2

    .line 990
    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mForegroundOnlyPermission:Z

    return v0
.end method

.method blacklist isTypeDeprecated(I)Z
    .registers 4

    .line 1014
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    .line 1015
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 1014
    :goto_13
    return p1
.end method

.method public blacklist isTypeDisabled(I)Z
    .registers 4

    .line 981
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-static {v0, v1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->isValidChangeId(J)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    .line 982
    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 981
    :goto_13
    return p1
.end method

.method public blacklist setCustomPermission(Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;)V
    .registers 2

    .line 945
    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    .line 946
    return-void
.end method

.method public blacklist setTypeDisabledForTest(ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    iget-wide v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->overrideChangeIdForTest(JZLjava/lang/String;)V

    .line 1001
    return-void
.end method

.method public blacklist toPermissionString()Ljava/lang/String;
    .registers 2

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->toPermissionString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 897
    const-string/jumbo v1, "type=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const-string v1, " deprecationChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDeprecationChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 901
    const-string v1, " disabledChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    iget-wide v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mDisabledChangeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 903
    const-string v1, " customPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    iget-object v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePolicyInfo;->mCustomPermission:Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
