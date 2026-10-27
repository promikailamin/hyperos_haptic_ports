.class Lcom/android/server/devicepolicy/OwnersData;
.super Ljava/lang/Object;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;,
        Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;,
        Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_CAN_ACCESS_DEVICE_IDS:Ljava/lang/String; = "canAccessDeviceIds"

.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_DEVICE_OWNER_TYPE_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_FREEZE_RECORD_END:Ljava/lang/String; = "end"

.field private static final ATTR_FREEZE_RECORD_START:Ljava/lang/String; = "start"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PROFILE_OWNER_OF_ORG_OWNED_DEVICE:Ljava/lang/String; = "isPoOrganizationOwnedDevice"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_SIZE:Ljava/lang/String; = "size"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_DEVICE_OWNER_PROTECTED_PACKAGES:Ljava/lang/String; = "device-owner-protected-packages"

.field private static final TAG_DEVICE_OWNER_TYPE:Ljava/lang/String; = "device-owner-type"

.field private static final TAG_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "freeze-record"

.field private static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

.field mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final mDeviceOwnerTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceOwnerUserId:I

.field private final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 3
    .param p1, "pathProvider"    # Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    .line 114
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "needBlank":Z
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v1, :cond_2e

    .line 154
    const-string v1, "Device Owner: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 156
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 159
    const/4 v0, 0x1

    .line 161
    :cond_2e
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v1, :cond_50

    .line 162
    if-eqz v0, :cond_37

    .line 163
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 165
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System Update Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_50
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_9e

    .line 169
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 170
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;>;"
    if-eqz v0, :cond_6d

    .line 171
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 173
    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile Owner (User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 176
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 177
    const/4 v0, 0x1

    .line 178
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;>;"
    goto :goto_5c

    .line 180
    :cond_9e
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v1, :cond_c0

    .line 181
    if-eqz v0, :cond_a7

    .line 182
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 184
    :cond_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending System Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_c0
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v1, :cond_c8

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_e8

    .line 188
    :cond_c8
    if-eqz v0, :cond_cd

    .line 189
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 191
    :cond_cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System update freeze record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_e8
    return-void
.end method

.method getDeviceOwnerFile()Ljava/io/File;
    .registers 4

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-interface {v1}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner_2.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-interface {v1, p1}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "profile_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .registers 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "freezePeriodRecord":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_1a

    .line 201
    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 203
    :cond_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :goto_1d
    const-string v1, "; end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_2e

    .line 207
    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 209
    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method load([I)V
    .registers 7
    .param p1, "allUsers"    # [I

    .line 117
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->readFromFileLocked()V

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1a

    aget v3, p1, v2

    .line 120
    .local v3, "userId":I
    new-instance v4, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    invoke-direct {v4, p0, v3}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->readFromFileLocked()V

    .line 119
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 123
    :cond_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    .line 124
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;
    if-eqz v0, :cond_2d

    iget-object v2, v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 125
    .local v2, "admin":Landroid/content/ComponentName;
    :goto_2e
    iget-object v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v3, :cond_4a

    if-eqz v2, :cond_4a

    .line 126
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 126
    const-string v1, "User %d has both DO and PO, which is not supported"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DevicePolicyManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_4a
    return-void
.end method

.method writeDeviceOwner()Z
    .registers 2

    .line 138
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->writeToFileLocked()Z

    move-result v0

    return v0
.end method

.method writeProfileOwner(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 148
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->writeToFileLocked()Z

    move-result v0

    return v0
.end method
