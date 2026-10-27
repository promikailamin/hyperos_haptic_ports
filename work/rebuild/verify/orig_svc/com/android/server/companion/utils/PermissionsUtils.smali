.class public abstract Lcom/android/server/companion/utils/PermissionsUtils;
.super Ljava/lang/Object;
.source "PermissionsUtils.java"


# static fields
.field public static final DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

.field public static final PERM_SET_TO_PERMS:Ljava/util/Map;

.field public static final SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

.field public static sAppOpsService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method public static synthetic $r8$lambda$kjl392eA0MpvY98_k9mTV7k0nV0(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 363
    const-string v0, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/companion/utils/RolesUtils;->isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 18

    const/16 v0, 0xc

    .line 123
    new-array v1, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x5

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.permission.READ_CALENDAR"

    const-string v5, "android.permission.WRITE_CALENDAR"

    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x8

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.permission.READ_CALL_LOG"

    const-string v6, "android.permission.WRITE_CALL_LOG"

    invoke-static {v5, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "android.permission.WRITE_CONTACTS"

    const-string v8, "android.permission.GET_ACCOUNTS"

    const-string v9, "android.permission.READ_CONTACTS"

    invoke-static {v9, v7, v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/4 v6, 0x7

    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-static {v9}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const/4 v8, 0x6

    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "android.permission.BLUETOOTH_SCAN"

    const-string v12, "android.permission.NEARBY_WIFI_DEVICES"

    const-string v13, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v14, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v13, v14, v11, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v10

    aput-object v10, v1, v4

    const/16 v4, 0xb

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v11}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v10

    aput-object v10, v1, v2

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v16, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v17, "android.permission.ANSWER_PHONE_CALLS"

    const-string v10, "android.permission.READ_PHONE_STATE"

    const-string v11, "android.permission.CALL_PHONE"

    const-string v12, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v13, "com.android.voicemail.permission.READ_VOICEMAIL"

    const-string v14, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    const-string v15, "android.permission.USE_SIP"

    invoke-static/range {v10 .. v17}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v8

    .line 134
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v11, "android.permission.RECEIVE_MMS"

    const-string v12, "android.permission.READ_CELL_BROADCASTS"

    const-string v7, "android.permission.SEND_SMS"

    const-string v8, "android.permission.RECEIVE_SMS"

    const-string v9, "android.permission.READ_SMS"

    const-string v10, "android.permission.RECEIVE_WAP_PUSH"

    invoke-static/range {v7 .. v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v6

    .line 136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v9, "android.permission.READ_MEDIA_IMAGES"

    const-string v10, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v7, "android.permission.READ_MEDIA_AUDIO"

    const-string v8, "android.permission.READ_MEDIA_VIDEO"

    invoke-static/range {v5 .. v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v3

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    const/16 v0, 0xd

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android.permission.ADD_MIRROR_DISPLAY"

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v1, v2

    const/16 v0, 0xe

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android.permission.ADD_TRUSTED_DISPLAY"

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v1, v4

    .line 123
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->PERM_SET_TO_PERMS:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 146
    const-string v1, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 153
    const-string v1, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_WATCH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "android.app.role.COMPANION_DEVICE_FITNESS_TRACKER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "android.app.role.COMPANION_DEVICE_COMPUTER"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "android.app.role.COMPANION_DEVICE_GLASSES"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_GLASSES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "android.app.role.COMPANION_DEVICE_MEDICAL"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_MEDICAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_NEARBY_DEVICE_STREAMING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_VIRTUAL_DEVICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    const/4 v0, 0x0

    .line 368
    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method public static checkPackage(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 337
    :try_start_1
    invoke-static {}, Lcom/android/server/companion/utils/PermissionsUtils;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_e

    if-nez p0, :cond_c

    return v0

    :cond_c
    const/4 p0, 0x0

    return p0

    :catch_e
    return v0
.end method

.method public static enforceCallerCanInteractWithUserId(Landroid/content/Context;I)V
    .registers 3

    .line 234
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 236
    :cond_7
    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    goto :goto_32

    .line 283
    :cond_9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    .line 285
    :goto_16
    const-string v4, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1f

    move v2, v3

    .line 287
    :cond_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    if-ne p0, p1, :cond_2e

    .line 288
    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_32

    if-eqz v2, :cond_33

    goto :goto_32

    :cond_2e
    if-eqz v1, :cond_33

    if-eqz v2, :cond_33

    :cond_32
    :goto_32
    return-void

    .line 295
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not have permissions to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4e

    goto :goto_51

    .line 297
    :cond_4e
    const-string/jumbo p3, "manage associations"

    :goto_51
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for u"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallerCanObserveDevicePresenceByDeviceId(Landroid/content/Context;)V
    .registers 3

    .line 316
    const-string v0, "android.permission.ACCESS_COMPANION_INFO"

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 320
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not have permissions to request observing device presence base on the device id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    .line 306
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->hasRequirePermissions(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 307
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller (uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") does not have permissions to request observing device presence base on the UUID"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallerIsSystemOr(ILjava/lang/String;)V
    .registers 6

    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    goto :goto_1b

    .line 257
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 258
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, ")"

    if-ne v2, p0, :cond_39

    .line 263
    invoke-static {v0, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :goto_1b
    return-void

    .line 264
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t belong to calling uid ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_39
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UserId ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not match the expected UserId ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V
    .registers 4

    .line 244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 246
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanInteractWithUserId(Landroid/content/Context;I)V

    return-void
.end method

.method public static enforceCallerShellOrRoot()V
    .registers 2

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 332
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither Shell nor Root"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    return-void
.end method

.method public static enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    .registers 4

    .line 176
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForRequestingProfile(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    return-void

    .line 179
    :cond_15
    :goto_15
    invoke-static {p0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForRequestingSelfManaged(Landroid/content/Context;I)V

    return-void
.end method

.method public static enforcePermissionForRequestingProfile(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    if-nez p1, :cond_4

    goto/16 :goto_8f

    .line 191
    :cond_4
    sget-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

    .line 192
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2c

    .line 193
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported device profile: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_2c
    :goto_2c
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " profile."

    if-eqz v1, :cond_59

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_3f

    goto :goto_59

    .line 197
    :cond_3f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caller must be system to associate with a device with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    :goto_59
    const/4 v1, 0x0

    .line 201
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 202
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_6d

    goto :goto_8f

    .line 204
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application must hold "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to associate with a device with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    :goto_8f
    return-void
.end method

.method public static enforcePermissionForRequestingSelfManaged(Landroid/content/Context;I)V
    .registers 4

    .line 214
    const-string v0, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 216
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Application does not hold android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 345
    sget-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v0, :cond_1e

    .line 346
    const-class v0, Lcom/android/server/companion/utils/PermissionsUtils;

    monitor-enter v0

    .line 347
    :try_start_7
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_1a

    .line 348
    const-string v1, "appops"

    .line 349
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 348
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    goto :goto_1a

    :catchall_18
    move-exception v1

    goto :goto_1c

    .line 351
    :cond_1a
    :goto_1a
    monitor-exit v0

    goto :goto_1e

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_18

    throw v1

    .line 353
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method public static hasRequirePermissions(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 5

    .line 358
    const-string v0, "android.permission.REQUEST_OBSERVE_DEVICE_UUID_PRESENCE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 360
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 361
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 362
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method
