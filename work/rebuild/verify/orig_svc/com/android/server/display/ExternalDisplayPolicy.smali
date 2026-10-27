.class public Lcom/android/server/display/ExternalDisplayPolicy;
.super Ljava/lang/Object;
.source "ExternalDisplayPolicy.java"


# static fields
.field public static final DEBUG:Z

.field static final ENABLE_ON_CONNECT:Ljava/lang/String; = "persist.sys.display.enable_on_connect.external"


# instance fields
.field public final mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

.field public mIsBootCompleted:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public volatile mStatus:I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method public static synthetic $r8$lambda$2e524ye28McdF74rNJXrAjDbcko(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/LogicalDisplay;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->disableExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8D4Cfxol3DTYviRaOyNiNNJagtE(Lcom/android/server/display/ExternalDisplayPolicy;ZLcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->lambda$handleMirrorBuiltInDisplaySettingChangeLocked$0(ZLcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/display/ExternalDisplayPolicy;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmStatus(Lcom/android/server/display/ExternalDisplayPolicy;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdisableExternalDisplays(Lcom/android/server/display/ExternalDisplayPolicy;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->disableExternalDisplays()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    const-string v0, "ExternalDisplayPolicy"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ExternalDisplayPolicy$Injector;)V
    .registers 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    .line 118
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    .line 119
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 120
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 121
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 122
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getDisplayNotificationManager()Lcom/android/server/display/notifications/DisplayNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 123
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 124
    invoke-interface {p1}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-void
.end method

.method public static isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final disableExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 6

    .line 301
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_89

    .line 305
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_1c

    .line 306
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_89

    .line 307
    const-string p0, "disableExternalDisplayLocked shouldn\'t be called when the error handling flag is off"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 313
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_44

    .line 314
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_89

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableExternalDisplayLocked is not allowed: displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isEnabledLocked=false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 322
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 323
    const-string v0, "External display is currently not allowed and is getting disabled."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_5e
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 329
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayDisabled(I)V

    .line 331
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_89

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disableExternalDisplayLocked complete displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 332
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    :goto_89
    return-void
.end method

.method public final disableExternalDisplays()V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 366
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    .line 367
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 6

    .line 206
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_e

    .line 207
    const-string p0, "handleExternalDisplayConnectedLocked called for non-external display"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    if-nez v0, :cond_20

    .line 212
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 216
    :cond_20
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayConnected(Lcom/android/server/display/LogicalDisplay;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->shouldAutoEnable(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_37

    .line 219
    const-string v0, "External display is enabled by default, bypassing user consent."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {p0, p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void

    .line 225
    :cond_37
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_58

    .line 229
    const-string p1, "handleExternalDisplayConnectedLocked: External display can not be used because it is currently not allowed."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 235
    :cond_58
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {p0, p1, v2}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->sendExternalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 237
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_79

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleExternalDisplayConnectedLocked complete displayId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return-void
.end method

.method public handleLogicalDisplayContentModeChange(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 261
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_16

    .line 265
    :cond_d
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    .line 266
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayContentModeChange(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public handleLogicalDisplayDisconnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 249
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p1

    .line 250
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 254
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayDisconnected(I)V

    return-void
.end method

.method public handleMirrorBuiltInDisplaySettingChangeLocked(Z)V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isDisplayReadyForMirroring(I)Z
    .registers 6

    .line 371
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 372
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 373
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_17

    .line 374
    const-string p0, "ExternalDisplayPolicy"

    const-string/jumbo p1, "isDisplayReadyForMirroring: mirroring is not confirmed - boot is in progress"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_7b

    .line 377
    :cond_17
    :goto_17
    monitor-exit v0

    return v2

    .line 380
    :cond_19
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_2f

    .line 382
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_2d

    .line 383
    const-string p0, "ExternalDisplayPolicy"

    const-string/jumbo p1, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_2d
    monitor-exit v0

    return v2

    .line 389
    :cond_2f
    invoke-static {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 390
    sget-boolean p1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p1, :cond_62

    .line 391
    const-string p1, "ExternalDisplayPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_62
    monitor-exit v0

    return v2

    .line 398
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result p0

    if-nez p0, :cond_78

    .line 399
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_76

    .line 400
    const-string p0, "ExternalDisplayPolicy"

    const-string/jumbo p1, "isDisplayReadyForMirroring: mirroring is not confirmed - logicalDisplay is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_76
    monitor-exit v0

    return v2

    .line 405
    :cond_78
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_15

    throw p0
.end method

.method public isExternalDisplayAllowed()Z
    .registers 2

    .line 342
    iget p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    const/4 v0, 0x4

    if-ge p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$handleMirrorBuiltInDisplaySettingChangeLocked$0(ZLcom/android/server/display/LogicalDisplay;)V
    .registers 4

    .line 170
    invoke-static {p2}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 173
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 174
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/ExternalDisplayPolicy;->setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    .line 176
    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->handleLogicalDisplayContentModeChange(Lcom/android/server/display/LogicalDisplay;)V

    return-void
.end method

.method public onBootCompleted()V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x1

    .line 134
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    .line 135
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 136
    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_c

    :catchall_28
    move-exception p0

    goto :goto_71

    .line 141
    :cond_2a
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_37

    .line 142
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 144
    :cond_37
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 145
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_28

    .line 147
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayPolicy;->handleMirrorBuiltInDisplaySettingChangeLocked(Z)V

    .line 151
    :cond_49
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 152
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_70

    .line 153
    const-string p0, "ExternalDisplayPolicy"

    const-string v0, "ConnectedDisplayErrorHandlingEnabled is not enabled on your device: cannot register thermal listener."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_5d
    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;Lcom/android/server/display/ExternalDisplayPolicy-IA;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/ExternalDisplayPolicy;->registerThermalServiceListener(Landroid/os/IThermalEventListener$Stub;)Z

    move-result p0

    if-nez p0, :cond_70

    .line 160
    const-string p0, "ExternalDisplayPolicy"

    const-string v0, "Failed to register thermal listener"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    return-void

    .line 145
    :goto_71
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_28

    throw p0
.end method

.method public onPresentation(IZ)V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 275
    invoke-static {v1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_23

    .line 278
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_21

    if-eqz p2, :cond_1b

    .line 281
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onPresentationWindowAdded(I)V

    return-void

    .line 283
    :cond_1b
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/ExternalDisplayStatsService;->onPresentationWindowRemoved(I)V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 276
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v0

    return-void

    .line 278
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_21

    throw p0
.end method

.method public final registerThermalServiceListener(Landroid/os/IThermalEventListener$Stub;)Z
    .registers 5

    .line 347
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/ExternalDisplayPolicy$Injector;

    invoke-interface {p0}, Lcom/android/server/display/ExternalDisplayPolicy$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x0

    .line 348
    const-string v1, "ExternalDisplayPolicy"

    if-nez p0, :cond_11

    .line 349
    const-string p0, "Could not observe thermal status. Service not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    const/4 v2, 0x3

    .line 353
    :try_start_12
    invoke-interface {p0, p1, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_21

    .line 358
    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_1f

    .line 359
    const-string/jumbo p0, "registerThermalServiceListener complete."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 p0, 0x1

    return p0

    :catch_21
    move-exception p0

    .line 355
    const-string p1, "Failed to register thermal status listener"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .registers 5

    .line 185
    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_f

    .line 186
    const-string/jumbo p0, "setExternalDisplayEnabledLocked called for non external display"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    if-eqz p2, :cond_2d

    .line 190
    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 191
    const-string/jumbo p1, "setExternalDisplayEnabledLocked: External display can not be enabled because it is currently not allowed."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 197
    :cond_2d
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    return-void
.end method

.method public final shouldAutoEnable(Lcom/android/server/display/LogicalDisplay;)Z
    .registers 5

    .line 288
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_14

    :cond_a
    const-string/jumbo v0, "persist.sys.display.enable_on_connect.external"

    .line 289
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 293
    :cond_14
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isUpdatedDisplayConnectionDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    .line 295
    :cond_1d
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 296
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->canHostTasksLocked()Z

    move-result p0

    if-eqz p0, :cond_2c

    return v1

    :cond_2c
    return v2
.end method
