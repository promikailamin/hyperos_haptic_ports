.class public Lcom/android/server/companion/association/DisassociationProcessor;
.super Ljava/lang/Object;
.source "DisassociationProcessor.java"


# static fields
.field public static final ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public static synthetic $r8$lambda$47sq2Nj-NrVpeXlanjXrxGINZIw(Lcom/android/server/companion/association/DisassociationProcessor;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/DisassociationProcessor;->lambda$getPackageProcessImportance$3(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GY1a2aChEJmoyp6c_NMCfmIZkhY(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->lambda$stopListening$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$HHQRKhyk7AdCoimgnli3m2p6aiw(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->lambda$startListening$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$_Ea5NECsNOwfNfVRCbRbc1zMXNk(ILandroid/companion/AssociationInfo;)Z
    .registers 2

    .line 140
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    if-eq p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$fxs-KBH0DInedDwjab-IDffzEmw(Lcom/android/server/companion/association/DisassociationProcessor;ILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/association/DisassociationProcessor;->lambda$disassociate$1(ILjava/lang/String;Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAssociationStore(Lcom/android/server/companion/association/DisassociationProcessor;)Lcom/android/server/companion/association/AssociationStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/companion/association/DisassociationProcessor;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mstopListening(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->stopListening()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/companion/association/DisassociationProcessor;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/android/server/companion/association/AssociationStore;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/app/NotificationManager;)V
    .registers 10

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    .line 105
    iput-object p3, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 106
    iput-object p4, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 107
    new-instance p2, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;Lcom/android/server/companion/association/DisassociationProcessor-IA;)V

    iput-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    .line 109
    iput-object p5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mDevicePresenceMonitor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 110
    iput-object p6, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mCompanionAppController:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 111
    iput-object p7, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 112
    iput-object p8, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 113
    iput-object p9, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public disassociate(ILjava/lang/String;)V
    .registers 11

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disassociating id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DisassociationProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_21} :catch_ba

    .line 134
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    .line 135
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v4

    .line 138
    iget-object v5, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 139
    invoke-virtual {v5, v2, v3}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 138
    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v5

    .line 143
    invoke-static {v5, v4}, Lcom/android/server/companion/utils/RolesUtils;->isRoleInUseByAssociations(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->getPackageProcessImportance(ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_7c

    if-eqz v4, :cond_7c

    if-nez v5, :cond_7c

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot disassociate id=["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] now - process is visible. Start listening to package importance..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance p1, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p1, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 p2, 0x1

    .line 154
    invoke-virtual {p1, p2}, Landroid/companion/AssociationInfo$Builder;->setRevoked(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/companion/association/DisassociationProcessor;->startListening()V

    return-void

    .line 161
    :cond_7c
    iget-object v1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->removeListeners(I)V

    .line 162
    iget-object v1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    .line 165
    iget-object v1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->removeRequestsByAssociationId(II)V

    .line 166
    iget-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lcom/android/server/companion/association/AssociationStore;->removeAssociation(ILjava/lang/String;)V

    .line 169
    new-instance p1, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v2, v3, v0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;ILjava/lang/String;Landroid/companion/AssociationInfo;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    if-nez v5, :cond_b9

    if-eqz v4, :cond_b9

    .line 190
    const-string p1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 192
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 193
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/companion/utils/RolesUtils;->removeRoleHolderForAssociation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :cond_b9
    return-void

    .line 130
    :catch_ba
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Association id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already disassociated."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disassociate(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 225
    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 227
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    const-string/jumbo p2, "legacy"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    return-void

    .line 221
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Association for mac address=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] doesn\'t exist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPackageProcessImportance(ILjava/lang/String;)I
    .registers 4

    .line 232
    new-instance v0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$disassociate$1(ILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .registers 6

    .line 170
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 171
    invoke-virtual {p3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/android/server/companion/utils/RolesUtils;->NLS_PROFILES:Ljava/util/Set;

    .line 172
    invoke-virtual {p3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_60

    .line 173
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.service.notification.NotificationListenerService"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, p3, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    .line 178
    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 181
    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    .line 180
    invoke-virtual {v0, p3, v1, v1}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V

    goto :goto_34

    :cond_60
    return-void
.end method

.method public final synthetic lambda$getPackageProcessImportance$3(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 6

    .line 233
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    .line 234
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    .line 235
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$startListening$4()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    const/16 v1, 0xc8

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    return-void
.end method

.method public final synthetic lambda$stopListening$5()V
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mActivityManager:Landroid/app/ActivityManager;

    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mOnPackageVisibilityChangeListener:Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    return-void
.end method

.method public removeIdleSelfManagedAssociations()V
    .registers 11

    .line 265
    const-string v0, "Removing idle self-managed associations."

    const-string v1, "CDM_DisassociationProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 268
    const-string v0, "debug.cdm.cdmservice.removal_time_window"

    const-wide/16 v4, -0x1

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1b

    .line 271
    sget-wide v4, Lcom/android/server/companion/association/DisassociationProcessor;->ASSOCIATION_REMOVAL_TIME_WINDOW_DEFAULT:J

    .line 274
    :cond_1b
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 275
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v7

    if-nez v7, :cond_38

    goto :goto_25

    .line 278
    :cond_38
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v7, v7, v4

    if-ltz v7, :cond_25

    .line 281
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    .line 283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing inactive self-managed association=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v6, "self-idle"

    invoke-virtual {p0, v7, v6}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_25

    :cond_6a
    return-void
.end method

.method public final startListening()V
    .registers 3

    .line 240
    const-string v0, "Start listening to uid importance changes..."

    const-string v1, "CDM_DisassociationProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :try_start_7
    new-instance v0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    .line 247
    :catch_10
    const-string p0, "Failed to start listening to uid importance changes."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopListening()V
    .registers 3

    .line 252
    const-string v0, "Stop listening to uid importance changes."

    const-string v1, "CDM_DisassociationProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_7
    new-instance v0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    .line 257
    :catch_10
    const-string p0, "Failed to stop listening to uid importance changes."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
