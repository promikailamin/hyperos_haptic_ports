.class public abstract Lcom/android/server/companion/utils/MetricUtils;
.super Ljava/lang/Object;
.source "MetricUtils.java"


# static fields
.field public static final ASSOCIATION_ACTION_DEVICE_PROFILE:Ljava/util/Map;

.field public static final DEVICE_PRESENCE_CHANGED_DEVICE_PROFILE:Ljava/util/Map;

.field public static final DEVICE_PRESENCE_CHANGED_EVENT:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 30

    const/4 v0, 0x0

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x1

    .line 95
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v22, 0x2

    .line 97
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v23, 0x3

    .line 99
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v24, 0x4

    .line 101
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v25, 0x5

    .line 103
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v26, 0x6

    .line 105
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v27, 0x7

    .line 107
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v28, 0x8

    .line 109
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v29, 0x9

    .line 111
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v14, v12

    move-object v12, v10

    move-object v10, v8

    move-object v8, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v1

    .line 91
    const-string/jumbo v1, "null"

    const-string v3, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string v5, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v7, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string v9, "android.app.role.COMPANION_DEVICE_COMPUTER"

    const-string v11, "android.app.role.COMPANION_DEVICE_GLASSES"

    const-string v13, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    const-string v15, "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

    const-string v17, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    const-string v19, "android.app.role.COMPANION_DEVICE_FITNESS_TRACKER"

    invoke-static/range {v1 .. v20}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v3, v16

    move-object/from16 v5, v20

    sput-object v1, Lcom/android/server/companion/utils/MetricUtils;->ASSOCIATION_ACTION_DEVICE_PROFILE:Ljava/util/Map;

    const/16 v1, 0xb

    .line 114
    new-array v7, v1, [Ljava/util/Map$Entry;

    const-string/jumbo v9, "null"

    .line 115
    invoke-static {v9, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v9

    aput-object v9, v7, v0

    const-string v0, "UUID"

    .line 118
    invoke-static {v0, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v21

    const-string v0, "android.app.role.COMPANION_DEVICE_WATCH"

    .line 121
    invoke-static {v0, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v22

    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    .line 124
    invoke-static {v0, v10}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v23

    const-string v0, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 127
    invoke-static {v0, v12}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v24

    const-string v0, "android.app.role.COMPANION_DEVICE_COMPUTER"

    .line 130
    invoke-static {v0, v14}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v25

    const-string v0, "android.app.role.COMPANION_DEVICE_GLASSES"

    .line 133
    invoke-static {v0, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v26

    const-string v0, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    .line 136
    invoke-static {v0, v10}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v27

    const-string v0, "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

    .line 139
    invoke-static {v0, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    aput-object v0, v7, v28

    const/16 v0, 0xa

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 142
    const-string v5, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-static {v5, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v7, v29

    const-string v3, "android.app.role.COMPANION_DEVICE_FITNESS_TRACKER"

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 145
    invoke-static {v3, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v7, v0

    .line 114
    invoke-static {v7}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/MetricUtils;->DEVICE_PRESENCE_CHANGED_DEVICE_PROFILE:Ljava/util/Map;

    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    move-object v9, v10

    move-object v11, v12

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, v10

    move-object v10, v12

    move-object v12, v14

    .line 149
    invoke-static/range {v1 .. v12}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/MetricUtils;->DEVICE_PRESENCE_CHANGED_EVENT:Ljava/util/Map;

    return-void
.end method

.method public static logCreateAssociation(Landroid/companion/AssociationInfo;Landroid/content/Context;)V
    .registers 4

    .line 169
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.role.COMPANION_DEVICE_MEDICAL"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 173
    :cond_d
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/companion/utils/PackageUtils;->getUidFromPackageName(ILandroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 175
    sget-object v0, Lcom/android/server/companion/utils/MetricUtils;->ASSOCIATION_ACTION_DEVICE_PROFILE:Ljava/util/Map;

    .line 177
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    .line 178
    const-string/jumbo p0, "null"

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    .line 177
    :goto_29
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x1c3

    const/4 v1, 0x1

    .line 175
    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public static logDevicePresenceEvent(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    const-string v1, "android.app.role.COMPANION_DEVICE_MEDICAL"

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3b

    .line 210
    :cond_e
    invoke-static {p0, p1, p3}, Lcom/android/server/companion/utils/PackageUtils;->getUidFromPackageName(ILandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_3b

    .line 212
    sget-object p1, Lcom/android/server/companion/utils/MetricUtils;->DEVICE_PRESENCE_CHANGED_DEVICE_PROFILE:Ljava/util/Map;

    if-nez p2, :cond_1c

    .line 216
    const-string/jumbo p2, "null"

    .line 215
    :cond_1c
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/android/server/companion/utils/MetricUtils;->DEVICE_PRESENCE_CHANGED_EVENT:Ljava/util/Map;

    .line 218
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x438

    .line 212
    invoke-static {p3, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static logRemoveAssociation(Landroid/companion/AssociationInfo;Landroid/content/Context;)V
    .registers 4

    .line 187
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.role.COMPANION_DEVICE_MEDICAL"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 191
    :cond_d
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/companion/utils/PackageUtils;->getUidFromPackageName(ILandroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 193
    sget-object v0, Lcom/android/server/companion/utils/MetricUtils;->ASSOCIATION_ACTION_DEVICE_PROFILE:Ljava/util/Map;

    .line 195
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    .line 196
    const-string/jumbo p0, "null"

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    .line 195
    :goto_29
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x1c3

    const/4 v1, 0x2

    .line 193
    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method
