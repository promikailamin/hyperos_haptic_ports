.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field private static final APP_LOCALES_HELPER:Ljava/lang/String; = "app_locales"

.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PEOPLE_HELPER:Ljava/lang/String; = "people"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SLICES_HELPER:Ljava/lang/String; = "slices"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final sEligibleForMultiUser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    nop

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/io/File;

    .line 73
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 78
    nop

    .line 79
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/io/File;

    .line 81
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "permissions"

    const-string/jumbo v1, "notifications"

    const-string v2, "account_sync_settings"

    const-string v3, "app_locales"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleForMultiUser:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    return-void
.end method


# virtual methods
.method public addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V
    .registers 4
    .param p1, "keyPrefix"    # Ljava/lang/String;
    .param p2, "helper"    # Landroid/app/backup/BackupHelper;

    .line 133
    iget v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/backup/SystemBackupAgent;->sEligibleForMultiUser:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 134
    return-void

    .line 137
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/UserHandle;I)V
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "operationType"    # I

    .line 93
    invoke-super {p0, p1, p2}, Landroid/app/backup/BackupAgentHelper;->onCreate(Landroid/os/UserHandle;I)V

    .line 95
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    .line 97
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;I)V

    const-string v1, "account_sync_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 98
    new-instance v0, Lcom/android/server/backup/PreferredActivityBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>(I)V

    const-string/jumbo v1, "preferred_activities"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 99
    new-instance v0, Lcom/android/server/backup/NotificationBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(I)V

    const-string/jumbo v1, "notifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 100
    new-instance v0, Lcom/android/server/backup/PermissionBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>(I)V

    const-string/jumbo v1, "permissions"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 101
    new-instance v0, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "usage_stats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 102
    new-instance v0, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v0}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    const-string/jumbo v1, "shortcut_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 103
    new-instance v0, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {v0}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    const-string v1, "account_manager"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 104
    new-instance v0, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "slices"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 105
    new-instance v0, Lcom/android/server/backup/PeopleBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/PeopleBackupHelper;-><init>(I)V

    const-string/jumbo v1, "people"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 106
    new-instance v0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;

    iget v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mUserId:I

    invoke-direct {v0, v1}, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;-><init>(I)V

    const-string v1, "app_locales"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 107
    invoke-static {}, Lcom/android/server/backup/SystemBackupAgentStub;->getInstance()Lcom/android/server/backup/SystemBackupAgentStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/backup/SystemBackupAgentStub;->getHelperName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/backup/SystemBackupAgentStub;->getInstance()Lcom/android/server/backup/SystemBackupAgentStub;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/server/backup/SystemBackupAgentStub;->createBackupHelper(Landroid/content/Context;)Landroid/app/backup/BackupHelper;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 108
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 2
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 125
    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, "system_files"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 129
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 27
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    move-object/from16 v1, p5

    move-object/from16 v2, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring file domain="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SystemBackupAgent"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "restoredWallpaper":Z
    const/4 v4, 0x0

    .line 154
    .local v4, "outFile":Ljava/io/File;
    const-string/jumbo v5, "r"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "wallpaper"

    if-eqz v5, :cond_59

    .line 155
    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 156
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 157
    const/4 v0, 0x1

    move v4, v0

    goto :goto_5b

    .line 158
    :cond_48
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 159
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 160
    const/4 v0, 0x1

    move v4, v0

    goto :goto_5b

    .line 165
    :cond_59
    move-object v5, v4

    move v4, v0

    .end local v0    # "restoredWallpaper":Z
    .local v4, "restoredWallpaper":Z
    .local v5, "outFile":Ljava/io/File;
    :goto_5b
    if-nez v5, :cond_83

    .line 166
    :try_start_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unrecognized system file: [ "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_83
    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    move-object v15, v5

    invoke-static/range {v7 .. v15}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 170
    if-eqz v4, :cond_ba

    .line 171
    nop

    .line 172
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_9a} :catch_bb

    move-object v6, v0

    .line 174
    .local v6, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v6, :cond_ba

    .line 176
    :try_start_9d
    invoke-interface {v6}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a0} :catch_a1
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_bb

    .line 179
    goto :goto_ba

    .line 177
    :catch_a1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 178
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_a4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t restore settings\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ba} :catch_bb

    .line 188
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v6    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_ba
    :goto_ba
    goto :goto_d2

    .line 182
    :catch_bb
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    if-eqz v4, :cond_d2

    .line 185
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 186
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d2
    :goto_d2
    return-void
.end method
