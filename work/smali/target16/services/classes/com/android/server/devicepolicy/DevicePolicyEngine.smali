.class public final Lcom/android/server/devicepolicy/DevicePolicyEngine;
.super Ljava/lang/Object;
.source "DevicePolicyEngine.java"


# static fields
.field public static final CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;


# instance fields
.field public final mAdminPolicySize:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

.field public final mEnforcingAdmins:Landroid/util/SparseArray;

.field public final mGlobalPolicies:Ljava/util/Map;

.field public final mLocalPolicies:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mPolicyPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public mPolicySizeLimit:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$7gHfxgEIseAcHn6wy-TwaHfxQeE(Lcom/android/server/devicepolicy/DevicePolicyEngine;II)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->combinePolicyUpdateResults(II)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9AdS770YNToSdSY0zAC_wb-pJfQ(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$removeGlobalPolicyAsync$7(ZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DeV5xRkN6druGwQwEEwpGkE6_Yw(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$getProfileParentId$12(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FeOGaSXQvig3NNzspgjECPB0-bo(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$removeLocalPolicyAsync$3(ZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HKVIce6tKZ35b77bwiOaT7MTQow(Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 2

    .line 467
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    const/4 p0, -0x1

    :goto_f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hoc5h1QBWSJ1UnQa3MucHdY-3lk(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$applyToInheritableProfilesAsync$5(ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IxGEP9uo91WWwelHBNTlMPQ4Ci0(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$forceEnforcementRefreshLocked$0(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGONu141PVmuuFWnHGLbeaijjVs(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$sendPolicyResultToAdmin$10(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKalTg57RyuVNZnf26muDSV6AL4(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$enforcePoliciesOnInheritableProfilesIfApplicable$14(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eK5TbtEXVJkElvSKdwVn_wPIPRU(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$setLocalPolicyAsync$1(ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i-2e5iTdGH_ieK_Iti7LaayYKBQ(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$handlePackageChanged$13(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRYY9AuuErg43F4cpVeHunsGMnE(Ljava/util/List;ILcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .registers 4

    .line 2076
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 2077
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p0

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$n5WByKrtSXZQdXhwdCbbM-B5_0I(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$sendDevicePolicyChangedToSystem$9(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oy3iCsDXBg24M48teV2xM76CkMg(Ljava/util/List;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .registers 3

    .line 2090
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2091
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getSystemEntity()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$pVzFdOpJlLh8UNhPjQDyhWfDBXs(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$setGlobalPolicyAsync$6(ZZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uMdgEJDKhmzGEcbAjEShY53J7RI(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$maybeSendOnPolicyChanged$11(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxQcJdLPXTWsCmrZkQbadngvR9I(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->lambda$applyGlobalPolicyOnUsersWithLocalPoliciesAsyncLocked$8(ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 113
    const-string/jumbo v0, "no_cellular_2g"

    .line 114
    invoke-static {v0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/DeviceAdminServiceController;Ljava/lang/Object;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 6

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 156
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 157
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 158
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/devicepolicy/PolicyPathProvider;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicyPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 159
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    .line 160
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 161
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 162
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    return-void
.end method

.method public static getPolicyStateLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;
    .registers 2

    .line 1627
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    .line 1626
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 1631
    :catch_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static sizeOf(Landroid/app/admin/PolicyValue;)I
    .registers 4

    const/4 v0, 0x0

    .line 2263
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2264
    invoke-virtual {v1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2266
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2270
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 2271
    array-length p0, p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    return p0

    :catch_11
    move-exception p0

    .line 2273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calculating size of policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DevicePolicyEngine"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public final applyGlobalPolicyOnUsersWithLocalPoliciesAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 11

    const/4 v0, 0x0

    .line 1149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1148
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1149
    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 1152
    :cond_10
    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 1154
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1155
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1156
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_23

    .line 1160
    :cond_3a
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v3

    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v4

    .line 1164
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 1163
    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result v4

    .line 1166
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    if-eqz v4, :cond_5f

    if-nez p4, :cond_5f

    .line 1169
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v5

    .line 1168
    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    .line 1171
    invoke-virtual {p0, v3, p2, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 1180
    :cond_5f
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isPolicyApplied(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Landroid/app/admin/PolicyValue;)Z

    move-result v2

    .line 1183
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZ)V

    invoke-virtual {v0, v5, v3}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    goto :goto_23

    :cond_6d
    return-object v0
.end method

.method public final applyToInheritableProfilesAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;
    .registers 11

    .line 674
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isInheritable()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    .line 675
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    .line 677
    :cond_10
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda12;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v3, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public final checkFor2gFailure(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .registers 6

    .line 2545
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 2552
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v2, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    .line 2553
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    move v0, v1

    :goto_24
    if-nez v0, :cond_2d

    const/4 v0, 0x4

    const/4 v1, -0x1

    .line 2562
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    const/4 p0, 0x1

    return p0

    :cond_2d
    return v1
.end method

.method public final clear()V
    .registers 3

    .line 2535
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2537
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2538
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2539
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2540
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public clearAllPolicies()V
    .registers 1

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->clear()V

    .line 2531
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    return-void
.end method

.method public final combinePolicyUpdateResults(II)I
    .registers 4

    .line 0
    const/4 p0, -0x1

    if-eq p1, p0, :cond_1a

    if-ne p2, p0, :cond_6

    goto :goto_1a

    :cond_6
    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    if-ne p2, v0, :cond_c

    goto :goto_19

    :cond_c
    if-nez p1, :cond_12

    if-nez p2, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    if-ne p2, v0, :cond_18

    return v0

    :cond_18
    return p0

    :cond_19
    :goto_19
    return v0

    :cond_1a
    :goto_1a
    return p0
.end method

.method public final computePolicyUpdateResult(ZZZ)I
    .registers 4

    .line 0
    if-eqz p2, :cond_8

    if-nez p3, :cond_6

    if-nez p1, :cond_8

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    if-nez p2, :cond_e

    if-nez p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method public createBackup(Ljava/lang/String;)V
    .registers 3

    .line 2489
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2490
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicyPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 2491
    invoke-interface {p0}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    .line 2490
    invoke-static {p1, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->createBackup(Ljava/lang/String;Ljava/io/File;)V

    .line 2492
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .registers 6

    .line 2338
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2339
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2340
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_a3

    .line 2343
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2344
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2345
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PolicyValue;

    .line 2344
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2343
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2346
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_88

    .line 2347
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    :cond_88
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 2350
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public final doesAdminHavePoliciesLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z
    .registers 8

    .line 2232
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 2233
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    .line 2234
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v2

    .line 2238
    :cond_2a
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2240
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    .line 2241
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 2242
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    return v2

    :cond_7d
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 10

    .line 2418
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2419
    :try_start_3
    const-string v1, "Local Policies: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2420
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2421
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2422
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2423
    const-string v3, "User %d:\n"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2424
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2425
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    .line 2426
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 2427
    invoke-virtual {v4, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2428
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_45

    :catchall_66
    move-exception p0

    goto/16 :goto_13b

    .line 2430
    :cond_69
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1a

    .line 2432
    :cond_6d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2433
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2435
    const-string v1, "Global Policies: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2437
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 2438
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 2439
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2440
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_85

    .line 2442
    :cond_a0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2443
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2445
    const-string v1, "Default admin policy size limit: -1"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current admin policy size limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2447
    const-string v1, "Admin Policies size: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 2448
    :goto_c8
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_136

    .line 2449
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2450
    const-string v4, "User %d:\n"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2451
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2452
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_130

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 2453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 2455
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_f6

    .line 2457
    :cond_130
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 2459
    :cond_136
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2460
    monitor-exit v0

    return-void

    :goto_13b
    monitor-exit v0
    :try_end_13c
    .catchall {:try_start_3 .. :try_end_13c} :catchall_66

    throw p0
.end method

.method public final enforcePoliciesOnInheritableProfilesIfApplicable(Landroid/content/pm/UserInfo;)V
    .registers 3

    .line 1955
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1959
    :cond_7
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/pm/UserInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    .line 1644
    :cond_4
    invoke-virtual {p2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 1643
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->enforcePolicy(Ljava/lang/Object;Landroid/content/Context;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePolicyOnUserLocked(ILcom/android/server/devicepolicy/PolicyState;)V
    .registers 7

    .line 1986
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isInheritable()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_37

    .line 1990
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1991
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v2

    .line 1992
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1993
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    .line 1991
    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_17

    :cond_37
    :goto_37
    return-void
.end method

.method public final forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .registers 3

    .line 169
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isUserRestrictionPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    :cond_9
    return-void

    :catchall_a
    move-exception p0

    .line 175
    const-string p1, "DevicePolicyEngine"

    const-string v0, "Exception thrown during forceEnforcementRefreshIfUserRestrictionLocked"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final forceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .registers 3

    .line 201
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Lcom/android/server/devicepolicy/PolicyDefinition;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public getDevicePolicyState()Landroid/app/admin/DevicePolicyState;
    .registers 10

    .line 2004
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2005
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2007
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2008
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2009
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 2010
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/PolicyKey;

    .line 2012
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    .line 2014
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v8}, Lcom/android/server/devicepolicy/PolicyState;->getParcelablePolicyState()Landroid/app/admin/PolicyState;

    move-result-object v8

    .line 2012
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :catchall_6b
    move-exception p0

    goto :goto_b4

    .line 2017
    :cond_6d
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 2018
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 2020
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 2022
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getParcelablePolicyState()Landroid/app/admin/PolicyState;

    move-result-object v5

    .line 2020
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 2025
    :cond_ad
    new-instance p0, Landroid/app/admin/DevicePolicyState;

    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyState;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object p0

    .line 2026
    :goto_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_6b

    throw p0
.end method

.method public getEnforcingAdminsForResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;
    .registers 6

    .line 2388
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2389
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0

    .line 2391
    :cond_9
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2394
    :try_start_c
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2400
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2402
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 2401
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_43

    .line 2407
    :cond_25
    :goto_25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2408
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 2409
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 2408
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 2413
    :cond_36
    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->resolvePolicy(Ljava/util/LinkedHashMap;)Lcom/android/server/devicepolicy/ResolvedPolicy;

    move-result-object p0

    .line 2412
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/ResolvedPolicy;->getContributingAdmins()Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 2414
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_23

    throw p0
.end method

.method public final getEnforcingAdminsOnUser(I)Ljava/util/Set;
    .registers 4

    .line 2252
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2253
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2254
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1d

    :catchall_19
    move-exception p0

    goto :goto_1f

    :cond_1b
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_1d
    monitor-exit v0

    return-object v1

    .line 2255
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_19

    throw p0
.end method

.method public getGlobalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;)Ljava/util/LinkedHashMap;
    .registers 4

    .line 1392
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1396
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_1f

    .line 1398
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1399
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_13

    throw p0
.end method

.method public getGlobalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/lang/Object;
    .registers 6

    .line 1356
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1361
    monitor-exit v0

    return-object v2

    :catchall_12
    move-exception p0

    goto :goto_2b

    .line 1363
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/PolicyValue;

    if-nez p0, :cond_25

    goto :goto_29

    .line 1365
    :cond_25
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_29
    monitor-exit v0

    return-object v2

    .line 1366
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_12

    throw p0
.end method

.method public final getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;
    .registers 5

    .line 1602
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1607
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1608
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 1609
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 1608
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    :cond_20
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getPolicyStateLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    return-object p0

    .line 1603
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is a local only policy."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;
    .registers 5

    .line 1376
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1380
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_1f

    .line 1382
    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1383
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_13

    throw p0
.end method

.method public getLocalPolicyKeysSetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/Set;
    .registers 10

    .line 1418
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_6f

    .line 1425
    :cond_1c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1426
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 1427
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/PolicyKey;->hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    .line 1428
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 1429
    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1430
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :catchall_6b
    move-exception p0

    goto :goto_73

    .line 1433
    :cond_6d
    monitor-exit v0

    return-object v1

    .line 1423
    :cond_6f
    :goto_6f
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    .line 1434
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_9 .. :try_end_74} :catchall_6b

    throw p0
.end method

.method public getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;
    .registers 6

    .line 1452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1455
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_50

    .line 1458
    :cond_19
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1459
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_32
    :goto_32
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/PolicyKey;

    .line 1460
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/admin/PolicyKey;->hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1461
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_4c
    move-exception p0

    goto :goto_54

    .line 1464
    :cond_4e
    monitor-exit v0

    return-object v1

    .line 1456
    :cond_50
    :goto_50
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    .line 1465
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_4c

    throw p0
.end method

.method public getLocalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/lang/Object;
    .registers 7

    .line 1335
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_9
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1340
    monitor-exit v0

    return-object v2

    :catchall_12
    move-exception p0

    goto :goto_2b

    .line 1342
    :cond_14
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/PolicyValue;

    if-nez p0, :cond_25

    goto :goto_29

    .line 1344
    :cond_25
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_29
    monitor-exit v0

    return-object v2

    .line 1345
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_12

    throw p0
.end method

.method public final getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;
    .registers 6

    .line 1575
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1580
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1581
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    :cond_20
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1584
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1585
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 1584
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    :cond_4e
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getPolicyStateLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    return-object p0

    .line 1576
    :cond_5f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is a global only policy."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMaxPolicyStorageLimit()I
    .registers 1

    .line 2367
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return p0
.end method

.method public getPolicySizeForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)I
    .registers 4

    .line 2371
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2373
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    .line 2372
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2373
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2374
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public final getProfileParentId(I)I
    .registers 3

    .line 1777
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;
    .registers 3

    .line 1277
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1278
    :cond_8
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;
    .registers 5

    .line 1283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1288
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object p0

    goto :goto_27

    :catchall_15
    move-exception p0

    goto :goto_29

    .line 1290
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1291
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object p0

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    .line 1294
    :goto_27
    monitor-exit v0

    return-object p0

    .line 1295
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_15

    throw p0
.end method

.method public final getTargetUser(II)I
    .registers 5

    const/4 v0, -0x3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    return v0

    :cond_5
    if-ne p1, p2, :cond_8

    return v1

    .line 1770
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getProfileParentId(I)I

    move-result p0

    if-ne p0, p2, :cond_10

    const/4 p0, -0x2

    return p0

    :cond_10
    return v0
.end method

.method public getUserRestrictionPolicyKeysForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/Set;
    .registers 6

    .line 1478
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_13

    .line 1481
    :try_start_9
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_35

    .line 1483
    :cond_13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1484
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    .line 1486
    :cond_23
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1487
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_11

    throw p0
.end method

.method public final getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;
    .registers 6

    .line 1527
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 1528
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 1529
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->isUserRestrictionPolicy()Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_d

    .line 1533
    :cond_2a
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 1534
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    if-eqz v2, :cond_d

    .line 1535
    invoke-virtual {v2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_49

    goto :goto_d

    .line 1538
    :cond_49
    check-cast v1, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_4f
    return-object p0
.end method

.method public final handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .registers 10

    .line 2291
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2293
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    .line 2292
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2293
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2294
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_37

    :cond_36
    move v0, v1

    .line 2296
    :goto_37
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2297
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PolicyValue;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result p1

    goto :goto_51

    :cond_50
    move p1, v1

    .line 2299
    :goto_51
    invoke-static {p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result p3

    .line 2302
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_80

    add-int/2addr v0, p3

    sub-int/2addr v0, p1

    if-ge v0, v2, :cond_5f

    goto :goto_80

    .line 2308
    :cond_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Admin "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "reached max allowed storage limit."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DevicePolicyEngine"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 2309
    invoke-virtual {p0, p2, p4, p1, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    return v1

    :cond_80
    :goto_80
    sub-int/2addr p3, p1

    .line 2304
    invoke-virtual {p0, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->increasePolicySizeForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public handlePackageChanged(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1833
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public handleRoleChanged(Ljava/lang/String;I)V
    .registers 7

    .line 1937
    const-string v0, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_38

    .line 1941
    :cond_9
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1942
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1943
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    if-ge v1, p2, :cond_38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1944
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1945
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->reloadRoleAuthorities()V

    .line 1947
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1948
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    goto :goto_1b

    :cond_38
    :goto_38
    return-void
.end method

.method public handleStartUser(I)V
    .registers 4

    const/4 v0, 0x1

    .line 1808
    const-string/jumbo v1, "start-user"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V

    return-void
.end method

.method public handleStopUser(I)V
    .registers 4

    const/4 v0, 0x0

    .line 1824
    const-string/jumbo v1, "stop-user"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V

    return-void
.end method

.method public handleUnlockUser(I)V
    .registers 4

    const/4 v0, 0x1

    .line 1816
    const-string/jumbo v1, "unlock-user"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V

    return-void
.end method

.method public handleUserCreated(Landroid/content/pm/UserInfo;)V
    .registers 2

    .line 1929
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePoliciesOnInheritableProfilesIfApplicable(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public handleUserRemoved(I)V
    .registers 2

    .line 1921
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPoliciesForUser(I)V

    .line 1922
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdminsOnUser(I)V

    return-void
.end method

.method public final hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .registers 5

    .line 1560
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1563
    :cond_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 1566
    :cond_15
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 1567
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .registers 6

    .line 1545
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1548
    :cond_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 1551
    :cond_15
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    return v1

    .line 1554
    :cond_2c
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;

    .line 1555
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final increasePolicySizeForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .registers 6

    .line 2323
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2324
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2326
    :cond_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 2327
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    :cond_40
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2330
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2329
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isInheritDevicePolicyFromParent(Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 711
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 712
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object p0

    .line 713
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1e

    return p1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageInstalled(Ljava/lang/String;I)Z
    .registers 6

    const/4 p0, 0x1

    .line 1908
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_10

    if-eqz p1, :cond_e

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception p1

    .line 1912
    const-string p2, "DevicePolicyEngine"

    const-string v0, "Error handling package changes"

    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public final isPolicyApplied(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Landroid/app/admin/PolicyValue;)Z
    .registers 4

    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 1232
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object p0

    if-eqz p0, :cond_22

    if-eqz p3, :cond_22

    .line 1234
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {p3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0

    .line 1236
    :cond_24
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object p0

    invoke-static {p0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isProfileOfUser(II)Z
    .registers 3

    .line 705
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eq p1, p2, :cond_16

    if-eqz p0, :cond_16

    .line 707
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p0, p2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final isUserRestrictionPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .registers 2

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 185
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    if-nez p1, :cond_b

    return p0

    .line 190
    :cond_b
    instance-of p1, p1, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    :cond_10
    return p0
.end method

.method public final synthetic lambda$applyGlobalPolicyOnUsersWithLocalPoliciesAsyncLocked$8(ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 5

    .line 1186
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 1185
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->computePolicyUpdateResult(ZZZ)I

    move-result p1

    .line 1187
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->combinePolicyUpdateResults(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$applyToInheritableProfilesAsync$5(ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;
    .registers 15

    const/4 v0, 0x0

    .line 679
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 681
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 682
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 683
    invoke-virtual {p0, v8, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isProfileOfUser(II)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 684
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isInheritDevicePolicyFromParent(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_52

    if-eqz p2, :cond_3f

    const/4 v9, 0x0

    move-object v4, p0

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    .line 687
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    goto :goto_47

    :cond_3f
    move-object v4, p0

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    .line 690
    invoke-virtual {v4, v5, v6, v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 693
    :goto_47
    new-instance p2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda15;

    invoke-direct {p2, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;)V

    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    move-object v0, p0

    goto :goto_56

    :cond_52
    move-object v4, p0

    move-object v7, p2

    move-object v5, p3

    move-object v6, p4

    :goto_56
    move-object p0, v4

    move-object p3, v5

    move-object p4, v6

    move-object p2, v7

    goto :goto_13

    :cond_5b
    return-object v0
.end method

.method public final synthetic lambda$enforcePoliciesOnInheritableProfilesIfApplicable$14(Landroid/content/pm/UserInfo;)V
    .registers 6

    .line 1960
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 1961
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    goto :goto_7a

    .line 1966
    :cond_14
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1968
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 1969
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p1, :cond_29

    goto :goto_7a

    .line 1972
    :cond_29
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1973
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 1974
    monitor-exit v1

    return-void

    :catchall_42
    move-exception p0

    goto :goto_78

    .line 1976
    :cond_44
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    .line 1977
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1976
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1977
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1976
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1978
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicyOnUserLocked(ILcom/android/server/devicepolicy/PolicyState;)V

    goto :goto_60

    .line 1980
    :cond_76
    monitor-exit v1

    return-void

    :goto_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_2c .. :try_end_79} :catchall_42

    throw p0

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final synthetic lambda$forceEnforcementRefreshLocked$0(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .registers 8

    .line 203
    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 205
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_e} :catch_e

    :catch_e
    const/4 v2, -0x1

    .line 213
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    .line 216
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 217
    new-instance v3, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v3, v1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 219
    :try_start_2d
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_37} :catch_37

    .line 228
    :catch_37
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    goto :goto_1c

    :cond_45
    return-void
.end method

.method public final synthetic lambda$getProfileParentId$12(I)Ljava/lang/Integer;
    .registers 2

    .line 1778
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1779
    iget p1, p0, Landroid/content/pm/UserInfo;->id:I

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$handlePackageChanged$13(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1834
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v0

    if-eqz p2, :cond_24

    .line 1836
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1837
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1838
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    return-void

    .line 1843
    :cond_24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_28
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1845
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->isSystemAuthority()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_6c

    :cond_3b
    if-eqz p3, :cond_47

    .line 1846
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1847
    :cond_47
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1850
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1848
    const-string p2, "Admin package %s not found for user %d, removing admin policies"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DevicePolicyEngine"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    return-void

    :cond_6c
    :goto_6c
    if-eqz p3, :cond_74

    .line 1858
    invoke-virtual {p0, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPackageChanged(Ljava/lang/String;I)V

    .line 1859
    invoke-virtual {p0, p3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePersistentPreferredActivityPoliciesForPackage(Ljava/lang/String;I)V

    :cond_74
    return-void
.end method

.method public final synthetic lambda$maybeSendOnPolicyChanged$11(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .registers 9

    .line 1721
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 1722
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v1, 0x2

    .line 1724
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 1725
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    .line 1722
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    .line 1726
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1727
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_CHANGED in package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1727
    const-string p1, "DevicePolicyEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1732
    :cond_35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1733
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    .line 1736
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getTargetUser(II)I

    move-result p3

    .line 1734
    const-string p4, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {v1, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1737
    const-string p3, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {v1, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1738
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 1739
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1742
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 1741
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$removeGlobalPolicyAsync$7(ZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 7

    const/4 v0, 0x1

    .line 1002
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    .line 1001
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->computePolicyUpdateResult(ZZZ)I

    move-result p1

    .line 1004
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p0, p4, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->combinePolicyUpdateResults(II)I

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x2

    :cond_14
    const/4 p4, -0x1

    .line 1008
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 1016
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$removeLocalPolicyAsync$3(ZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x1

    .line 628
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 627
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->computePolicyUpdateResult(ZZZ)I

    move-result p1

    .line 630
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 629
    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->combinePolicyUpdateResults(II)I

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x2

    .line 634
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$sendDevicePolicyChangedToSystem$9(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5

    .line 1654
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic lambda$sendPolicyResultToAdmin$10(Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .registers 9

    .line 1667
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 1668
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v1, 0x2

    .line 1670
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 1671
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    .line 1668
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    .line 1672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1673
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Couldn\'t find any receivers that handle ACTION_DEVICE_POLICY_SET_RESULT in package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1673
    const-string p1, "DevicePolicyEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1678
    :cond_35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1679
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/app/admin/PolicyKey;->writeToBundle(Landroid/os/Bundle;)V

    .line 1682
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p3

    invoke-virtual {p0, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getTargetUser(II)I

    move-result p3

    .line 1680
    const-string p4, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {v1, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1683
    const-string p3, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {v1, p3, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1687
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1689
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$setGlobalPolicyAsync$6(ZZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;Ljava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 7

    .line 891
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    .line 890
    invoke-virtual {p0, p1, p2, p6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->computePolicyUpdateResult(ZZZ)I

    move-result p1

    .line 892
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->combinePolicyUpdateResults(II)I

    move-result p1

    const/4 p2, -0x1

    .line 894
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$setLocalPolicyAsync$1(ZZLjava/lang/Integer;Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 5

    .line 389
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 388
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->computePolicyUpdateResult(ZZZ)I

    move-result p1

    .line 390
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->combinePolicyUpdateResults(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public load()V
    .registers 5

    .line 2474
    const-string v0, "DevicePolicyEngine"

    const-string v1, "Reading device policies from file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2476
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->clear()V

    .line 2477
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicyPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-interface {v2}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/io/File;Lcom/android/server/devicepolicy/DevicePolicyEngine-IA;)V

    .line 2478
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readFromFileLocked()V

    .line 2479
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 7

    .line 1748
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1749
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not protected by BIND_DEVICE_ADMIN permission!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1759
    :cond_3a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    :cond_40
    return-void
.end method

.method public final maybeSendOnPolicyChanged(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .registers 12

    .line 1717
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1718
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda8;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final onGlobalPolicyChangedAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;
    .registers 6

    .line 1062
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    .line 1065
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v1

    const/4 v2, -0x1

    .line 1064
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 1067
    invoke-virtual {p0, v0, p2, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 1072
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    return-object v1
.end method

.method public final onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;
    .registers 6

    .line 727
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v1

    .line 729
    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    .line 733
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 742
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    .line 744
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 750
    :cond_1c
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    return-object v1
.end method

.method public reapplyAllPoliciesOnBootLocked()V
    .registers 8

    .line 2497
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 2498
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    .line 2501
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v2

    .line 2502
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->shouldSkipEnforcementIfNotChanged()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2504
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v1

    const/4 v3, -0x1

    .line 2505
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_a

    .line 2508
    :cond_31
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2509
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2510
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    .line 2511
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    .line 2514
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    .line 2515
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyDefinition;->shouldSkipEnforcementIfNotChanged()Z

    move-result v6

    if-nez v6, :cond_60

    .line 2517
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v4

    .line 2518
    invoke-virtual {p0, v5, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_60

    :cond_8c
    return-void
.end method

.method public removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 926
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final removeGlobalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;
    .registers 9

    .line 976
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    .line 982
    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 984
    invoke-virtual {v1, p2}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 987
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onGlobalPolicyChangedAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    goto :goto_23

    :catchall_1b
    move-exception p0

    goto :goto_47

    .line 988
    :cond_1d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    :goto_23
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 991
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    .line 997
    new-instance v5, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 1019
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1020
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 1023
    :cond_3f
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 1026
    monitor-exit v0

    return-object v2

    .line 1027
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_1b

    throw p0
.end method

.method public final removeGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .registers 2

    .line 1616
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLocalPoliciesForAdminsLocked(ILjava/util/function/Predicate;)V
    .registers 8

    .line 2101
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 2102
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2103
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 2104
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    .line 2105
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4f
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 2106
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2108
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v4

    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_4f

    :cond_69
    return-void
.end method

.method public removeLocalPoliciesForSystemEntities(ILjava/util/List;)V
    .registers 5

    .line 2086
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_3
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPoliciesForAdminsLocked(ILjava/util/function/Predicate;)V

    .line 2092
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final removeLocalPoliciesForUser(I)V
    .registers 8

    .line 2119
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2122
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_7a

    .line 2125
    :cond_13
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2126
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 2127
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 2128
    new-instance v3, Ljava/util/HashSet;

    .line 2129
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2130
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 2132
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    .line 2131
    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_5b

    .line 2136
    :cond_6f
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    monitor-exit v0

    return-void

    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_11

    throw p0
.end method

.method public removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    .line 506
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final removeLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;
    .registers 13

    .line 573
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 578
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 p0, -0x1

    .line 579
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1d
    move-exception v0

    move-object p0, v0

    goto/16 :goto_89

    .line 581
    :cond_21
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v4

    .line 583
    invoke-virtual {p0, v4, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 585
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .line 586
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_3a
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    .line 591
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 592
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 595
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 593
    invoke-virtual {v4, v5, p0}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Ljava/util/LinkedHashMap;)Z

    move-result p0

    goto :goto_55

    .line 597
    :cond_51
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result p0

    :goto_55
    if-eqz p0, :cond_5c

    .line 601
    invoke-virtual {v2, v3, v5, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    goto :goto_62

    .line 602
    :cond_5c
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    :goto_62
    const/4 p2, 0x2

    .line 605
    invoke-virtual {v2, v5, v3, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 612
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_73

    .line 613
    invoke-virtual {v2, v3, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 616
    :cond_73
    invoke-virtual {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 618
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    const/4 p2, 0x0

    .line 620
    invoke-virtual {v2, v3, v5, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyToInheritableProfilesAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p2

    new-instance p3, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;

    invoke-direct {p3, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Z)V

    .line 622
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 636
    :goto_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_9 .. :try_end_8a} :catchall_1d

    throw p0
.end method

.method public final removeLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)V
    .registers 5

    .line 1593
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1596
    :cond_d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removePersistentPreferredActivityPoliciesForPackage(Ljava/lang/String;I)V
    .registers 13

    .line 1866
    const-string v0, "DevicePolicyEngine"

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;

    move-result-object v1

    .line 1868
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 1869
    instance-of v3, v2, Landroid/app/admin/IntentFilterPolicyKey;

    if-eqz v3, :cond_a2

    .line 1874
    check-cast v2, Landroid/app/admin/IntentFilterPolicyKey;

    .line 1876
    invoke-virtual {v2}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/content/IntentFilter;

    .line 1878
    invoke-static {v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v2

    .line 1880
    invoke-virtual {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 1883
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1884
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3c
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1885
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/PolicyValue;

    invoke-virtual {v7}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 1886
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/PolicyValue;

    invoke-virtual {v7}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const-wide/16 v7, 0x0

    .line 1888
    :try_start_6c
    invoke-interface {v4, p1, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_87

    .line 1890
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/PolicyValue;

    invoke-virtual {v9}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 1889
    invoke-interface {v4, v9, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-nez v7, :cond_3c

    goto :goto_87

    :catch_85
    move-exception v6

    goto :goto_9c

    .line 1891
    :cond_87
    :goto_87
    const-string v7, "Persistent preferred activity in package %s not found for user %d, removing policy for admin"

    .line 1894
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {p1, v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 1891
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    invoke-virtual {p0, v2, v6, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_9b} :catch_85

    goto :goto_3c

    .line 1899
    :goto_9c
    const-string v7, "Error handling package changes"

    invoke-static {v0, v7, v6}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 1870
    :cond_a2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PolicyKey for PERSISTENT_PREFERRED_ACTIVITY is not of type IntentFilterPolicyKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_aa
    return-void
.end method

.method public removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .registers 9

    .line 2033
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2034
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2035
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 2036
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 2037
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2038
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_12

    :catchall_38
    move-exception p0

    goto :goto_9c

    .line 2042
    :cond_3a
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2043
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2044
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2045
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6e
    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PolicyKey;

    .line 2046
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    .line 2047
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 2049
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    .line 2048
    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_6e

    .line 2053
    :cond_9a
    monitor-exit v0

    return-void

    :goto_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3 .. :try_end_9d} :catchall_38

    throw p0
.end method

.method public removePoliciesForAdmins(ILjava/util/List;)V
    .registers 9

    .line 2061
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2063
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 2064
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 2065
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 2066
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2067
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v5

    if-ne v5, p1, :cond_32

    .line 2068
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_32

    :catchall_56
    move-exception p0

    goto :goto_62

    .line 2073
    :cond_58
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPoliciesForAdminsLocked(ILjava/util/function/Predicate;)V

    .line 2078
    monitor-exit v0

    return-void

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_56

    throw p0
.end method

.method public final removePoliciesForAdminsOnUser(I)V
    .registers 3

    .line 2145
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object p1

    .line 2147
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 2148
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final sendDevicePolicyChangedToSystem(I)V
    .registers 5

    .line 1648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 1649
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1650
    new-instance v1, Landroid/app/BroadcastOptions;

    invoke-direct {v1}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v2, 0x1

    .line 1651
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x2

    .line 1652
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1653
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1654
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V
    .registers 9

    .line 1700
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1702
    invoke-virtual {v1, p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_c

    .line 1706
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1707
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getCurrentResolvedPolicy()Landroid/app/admin/PolicyValue;

    move-result-object v3

    .line 1705
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1709
    invoke-virtual {p0, v1, p3, v2, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeSendOnPolicyChanged(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    goto :goto_c

    :cond_35
    return-void
.end method

.method public final sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .registers 12

    .line 1663
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1666
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    .line 788
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final setGlobalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;
    .registers 15

    .line 855
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 860
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v3

    const/4 v7, -0x1

    move-object v2, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    .line 861
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, 0x3

    .line 863
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_26
    move-exception v0

    move-object p0, v0

    goto :goto_76

    .line 867
    :cond_29
    invoke-virtual {v2, v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->checkFor2gFailure(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 868
    const-string p0, "DevicePolicyEngine"

    const-string p1, "Device does not support capabilities required to disable 2g. Not setting global policy state."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    .line 870
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_41
    move-object v9, v6

    .line 873
    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    move-result v6

    .line 875
    invoke-virtual {v2, v9, v4, v5, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    if-nez p4, :cond_6e

    .line 881
    invoke-virtual {v2, v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    if-eqz v6, :cond_56

    .line 884
    invoke-virtual {v2, v9, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onGlobalPolicyChangedAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    goto :goto_5c

    .line 885
    :cond_56
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    .line 887
    :goto_5c
    invoke-virtual {v2, v9, v3, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isPolicyApplied(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Landroid/app/admin/PolicyValue;)Z

    move-result v7

    move-object v8, v4

    .line 888
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda7;

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZLcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;)V

    move-object p2, v4

    move-object v2, v5

    move-object v4, v8

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 906
    :cond_6e
    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 907
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 909
    monitor-exit v1

    return-object p0

    .line 910
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_26

    throw p0
.end method

.method public setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;
    .registers 6

    .line 253
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final setLocalPolicyAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;
    .registers 15

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_9
    invoke-virtual {p0, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v3

    move-object v2, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    .line 336
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result p0

    move-object p1, v3

    move-object v3, v6

    if-nez p0, :cond_28

    const/4 p0, 0x3

    .line 338
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_25
    move-exception v0

    move-object p0, v0

    goto :goto_88

    .line 341
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result p0

    if-eqz p0, :cond_38

    move v8, p5

    move-object v6, v5

    move-object v5, v4

    move-object v4, p1

    .line 342
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_38
    move v8, p5

    .line 346
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 349
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 350
    invoke-virtual {p1, v4, v5, p0}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Ljava/util/LinkedHashMap;)Z

    move-result p0

    goto :goto_50

    .line 355
    :cond_4c
    invoke-virtual {p1, v4, v5}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    move-result p0

    .line 362
    :goto_50
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p3

    if-nez v8, :cond_72

    .line 365
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    if-eqz p0, :cond_63

    .line 368
    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p2

    :goto_61
    move-object p3, p2

    goto :goto_68

    .line 369
    :cond_63
    invoke-static {p2}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    goto :goto_61

    .line 371
    :goto_68
    invoke-virtual {v2, v3, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->isPolicyApplied(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Landroid/app/admin/PolicyValue;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    .line 372
    invoke-virtual {v2, v4, v3, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    goto :goto_73

    :cond_72
    const/4 p1, 0x0

    .line 381
    :goto_73
    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 382
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 385
    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyToInheritableProfilesAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p2

    new-instance p4, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;

    invoke-direct {p4, v2, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ZZ)V

    .line 386
    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 392
    :goto_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_9 .. :try_end_89} :catchall_25

    throw p0
.end method

.method public setMaxPolicyStorageLimit(I)V
    .registers 2

    .line 2359
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    return-void
.end method

.method public final setNonCoexistableLocalPolicyAsyncLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)Ljava/util/concurrent/CompletableFuture;
    .registers 7

    if-nez p4, :cond_6

    .line 445
    invoke-virtual {p2, p3}, Lcom/android/server/devicepolicy/PolicyState;->removePolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    goto :goto_9

    .line 447
    :cond_6
    invoke-virtual {p2, p3, p4}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    :goto_9
    if-eqz p6, :cond_12

    .line 453
    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p6}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p6

    goto :goto_16

    .line 454
    :cond_12
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p6

    .line 456
    :goto_16
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 457
    invoke-virtual {p0, p1, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 459
    :cond_23
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 463
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyToInheritableProfilesAsync(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    .line 465
    new-instance p1, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda11;

    invoke-direct {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, p6, p1}, Ljava/util/concurrent/CompletableFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .registers 2

    .line 2580
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 2581
    const-string/jumbo p1, "userControlDisabledPackages"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    const-string/jumbo p1, "packagesSuspended"

    .line 2582
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method public transferPolicies(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .registers 10

    .line 1491
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1492
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1493
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 1494
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 1495
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1497
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v3

    .line 1499
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyValue;

    .line 1500
    invoke-virtual {p0, v3, p2, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_12

    :catchall_42
    move-exception p0

    goto :goto_b3

    .line 1504
    :cond_44
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1505
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1506
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    .line 1507
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1508
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_78
    :goto_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PolicyKey;

    .line 1509
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    .line 1510
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 1512
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getPolicyDefinition()Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v6

    .line 1514
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PolicyValue;

    .line 1515
    invoke-virtual {p0, v6, p2, v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;I)Ljava/util/concurrent/CompletableFuture;

    goto :goto_78

    .line 1519
    :cond_ae
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_3 .. :try_end_af} :catchall_42

    .line 1520
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    return-void

    .line 1519
    :goto_b3
    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_42

    throw p0
.end method

.method public final updateDeviceAdminServiceOnPackageChanged(Ljava/lang/String;I)V
    .registers 6

    .line 2159
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 2161
    const-string v2, "enterprise"

    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_8

    .line 2164
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2165
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    const-string/jumbo v2, "package-broadcast"

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    :cond_30
    return-void
.end method

.method public final updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .registers 6

    .line 2177
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    .line 2179
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 2180
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_4c

    .line 2184
    :cond_1b
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2185
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2187
    :cond_35
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2191
    const-string v1, "enterprise"

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :goto_4c
    return-void

    .line 2194
    :cond_4d
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 2195
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "policy-added"

    .line 2194
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .registers 5

    .line 2207
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->doesAdminHavePoliciesLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3d

    .line 2210
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    .line 2211
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2212
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2213
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2214
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2221
    :cond_35
    const-string v1, "enterprise"

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :goto_3d
    return-void

    .line 2224
    :cond_3e
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 2225
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "policy-removed"

    .line 2224
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final updateDeviceAdminsServicesForUser(IZLjava/lang/String;)V
    .registers 6

    if-nez p2, :cond_8

    .line 1790
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServicesForUser(ILjava/lang/String;)V

    return-void

    .line 1793
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1795
    const-string v1, "enterprise"

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_10

    .line 1798
    :cond_25
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 1799
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1798
    invoke-virtual {v1, v0, p1, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_10

    :cond_2f
    return-void
.end method

.method public final write()V
    .registers 5

    .line 2464
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2465
    :try_start_3
    const-string v1, "DevicePolicyEngine"

    const-string v2, "Writing device policies to file."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicyPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-interface {v2}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/io/File;Lcom/android/server/devicepolicy/DevicePolicyEngine-IA;)V

    .line 2467
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeToFileLocked()V

    .line 2468
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method
