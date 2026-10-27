.class public Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;
.super Ljava/lang/Object;
.source "AppWindowLayoutSettingsRestoreStorage.java"


# static fields
.field static final ASPECT_RATIO_STAGED_DATA_PREFS:Ljava/lang/String; = "AspectRatioStagedDataPrefs.xml"

.field public static final EXPIRY_DURATION:Ljava/time/Duration;

.field static final KEY_STAGED_DATA_TIME:Ljava/lang/String; = "staged_data_time"

.field static final RESTORE_TIME_STAGED_DATA_PREFS:Ljava/lang/String; = "RestoreTimeStagedDataPrefs.xml"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstantSource:Ljava/time/InstantSource;

.field public final mRestoreTimeSharedPreferences:Landroid/content/SharedPreferences;

.field public final mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7

    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->EXPIRY_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/time/InstantSource;)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mContext:Landroid/content/Context;

    .line 78
    iput p2, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserId:I

    .line 79
    iput-object p3, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mInstantSource:Ljava/time/InstantSource;

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AspectRatioStagedDataPrefs.xml"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->createSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "RestoreTimeStagedDataPrefs.xml"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->createSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mRestoreTimeSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final createSharedPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    .line 113
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserId:I

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getAndRemoveUserAspectRatioForPackage(Ljava/lang/String;)I
    .registers 4

    .line 104
    invoke-virtual {p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->removeExpiredDataIfNeeded()V

    .line 105
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 107
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v0
.end method

.method public hasDataStored()Z
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final removeExpiredDataIfNeeded()V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mRestoreTimeSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "staged_data_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_60

    .line 124
    :cond_c
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mRestoreTimeSharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mInstantSource:Ljava/time/InstantSource;

    invoke-interface {v1}, Ljava/time/InstantSource;->instant()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    sget-object v1, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->EXPIRY_DURATION:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-ltz v0, :cond_60

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore time expired. Deleting packages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    .line 129
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "AppWinLayoutSetStorage"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mRestoreTimeSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_60
    :goto_60
    return-void
.end method

.method public setStagedRestoreTime()V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mRestoreTimeSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mInstantSource:Ljava/time/InstantSource;

    .line 90
    invoke-interface {p0}, Ljava/time/InstantSource;->millis()J

    move-result-wide v1

    .line 89
    const-string/jumbo p0, "staged_data_time"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 90
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public storePackageAndUserAspectRatio(Ljava/lang/String;I)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->mUserAspectRatioSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    invoke-virtual {p0}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsRestoreStorage;->setStagedRestoreTime()V

    return-void
.end method
